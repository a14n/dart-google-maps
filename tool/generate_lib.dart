import 'dart:io';
import 'dart:convert';

import 'package:dart_style/src/dart_formatter.dart';
import 'package:html/parser.dart' show parse;
import 'package:html/dom.dart';

final LICENCE = '''
// Copyright (c) 2015, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
''';

final customClassName = <String, String>{'Map': 'GMap', 'Symbol': 'GSymbol',};

final customContent = <String, String>{
  'MVCArray': '''

abstract class _MVCArray<E> extends MVCObject {
  Codec<E, dynamic> _codec = null;

  _MVCArray({List<E> elements, Codec<E, dynamic> codec: const IdentityCodec()})
      : this.created(elements == null
          ? new JsArray()
          : new JsArray.from(elements.map(codec.encode)), codec);

  _MVCArray.created(JsObject o,
      [Codec<E, dynamic> codec = const IdentityCodec()])
      : _codec = codec,
        super.created(o);

  void clear();
  void forEach(void callback(E o, num index)) =>
      _forEach((o, num index) => callback(_codec.decode(o), index));
  void _forEach(void callback(o, num index));
  List<E> getArray() => new JsList.created(_getArray(), _codec);
  JsArray _getArray();
  E getAt(num i) => _codec.decode(_getAt(i));
  _getAt(num i);
  num get length => _getLength();
  num _getLength();
  void insertAt(num i, E elem) => _insertAt(i, _codec.encode(elem));
  void _insertAt(num i, elem);
  E pop() => _codec.decode(_pop());
  _pop();
  num push(E elem) => _push(_codec.encode(elem));
  num _push(elem);
  E removeAt(num i) => _codec.decode(_removeAt(i));
  _removeAt(num i);
  void setAt(num i, E elem) => _setAt(i, _codec.encode(elem));
  void _setAt(num i, elem);

  Stream<int> get onInsertAt => getStream(this, #onInsertAt, "insert_at");
  Stream<IndexAndElement<E>> get onRemoveAt => getStream(this, #onClick,
      "click", (int index, oldElement) =>
          new IndexAndElement<E>(index, _codec.decode(oldElement)));
  Stream<IndexAndElement<E>> get onSetAt => getStream(this, #onClick, "click",
      (int index, oldElement) =>
          new IndexAndElement<E>(index, _codec.decode(oldElement)));
}

class IndexAndElement<E> {
  final int index;
  final E element;
  IndexAndElement(this.index, this.element);
}

'''
};

final defaultImports = '''
import 'dart:async' show Stream;
import 'dart:collection' show MapMixin;
import 'dart:html' show Node, Document, InputElement;

import 'package:js/js.dart';
import 'package:js/adapter/js_list.dart';
import 'package:js/util/codec.dart';

import 'package:google_maps/util/async.dart';
import 'package:google_maps/src/generated/google_maps.dart';
''';

final importsByLib = <String, String>{
  'google_maps': '''
import 'dart:async' show Stream;
import 'dart:collection' show MapMixin;
import 'dart:html' show Node, Document;

import 'package:js/js.dart';
import 'package:js/adapter/js_list.dart';
import 'package:js/util/codec.dart';

import 'package:google_maps/util/async.dart';
'''
};

main() async {
  final genFolder = 'lib/src/generated';
  final request = await new HttpClient().getUrl(Uri.parse(
      'https://developers.google.com/maps/documentation/javascript/reference'));
  final response = await request.close();
  final content = await UTF8.decodeStream(response);
//  final content =
//      new File('/home/aar-dw/perso/dev/dartStuff/dart-google-maps/api/api.html')
//          .readAsStringSync();
  final document = parse(content);
  final libraries = <String, List<JsElement>>{};
  document.querySelectorAll("#gc-content>div>ul").forEach((ul) {
    var folder = underscores(ul.previousElementSibling.attributes['id']);

    var libraryName = 'google_maps';
    if (folder.endsWith('_library')) {
      final lib = folder.substring(0, folder.length - '_library'.length);
      folder = 'library/$lib';
      libraryName += '.$lib';
    } else {
      folder = 'core/$folder';
    }

    ul.children.forEach((li) {
      final h2id = li.firstChild.attributes['href'].substring(1);
      final fileName = underscores(h2id) + '.dart';
      final file = new File('$genFolder/$folder/$fileName')
        ..createSync(recursive: true);

      final title = document.querySelector("#gc-content h2[id='$h2id']");

      libraries
          .putIfAbsent(libraryName, () => <JsElement>[])
          .add(new JsElement(h2id, file, title.parent));
    });
  });

  // generate contents
  libraries.keys.forEach((libraryName) {
    var imports = importsByLib[libraryName];
    if (imports == null) imports = defaultImports;
    var libContents = '''
$LICENCE

library $libraryName;

$imports

part '${libraryName.replaceAll('.', '_')}.g.dart';

''';
    libContents += libraries[libraryName]
        .map((e) => e.file.path.substring(genFolder.length + 1))
        .map((path) => "part '$path';")
        .join('\n');

    libContents = new DartFormatter().format(libContents);
    new File('$genFolder/${libraryName.replaceAll('.', '_')}.dart')
      ..createSync(recursive: true)
      ..writeAsStringSync(libContents);

    final jsElements = libraries.values.expand((e) => e).toList();

    libraries[libraryName].forEach((jsElmt) {
      var partContents = '''
$LICENCE

part of $libraryName;

''';

      if (customContent.containsKey(jsElmt.id)) {
        partContents += customContent[jsElmt.id];
      } else if (jsElmt.isEnum) {
        final values = jsElmt.constants
            .map((tr) => tr.getElementsByTagName('td')[0].text.trim())
            .join(',');
        partContents += 'enum ${jsElmt.name}{$values}';
      } else if (jsElmt.isNamespace ||
          jsElmt.isAnonymousObject ||
          jsElmt.isClass) {
        final inherit = getExtends(jsElmt.element.querySelector('h2'));
        if (jsElmt.isAnonymousObject) partContents += '@anonymous\n';
        if (jsElmt.isClass) partContents += "@JsName('${jsElmt.fullName}')\n";
        partContents += 'abstract class _${jsElmt.name} ' +
            (inherit != null
                ? 'extends ${inherit.replaceAll('.', '')}'
                : 'implements JsInterface') +
            ' {\n';

        // add constructors
        final constr = jsElmt.constructor;
        if (constr != null) {
          final decl = constr.getElementsByTagName('td')[0].text.trim();
          final parameters =
              decl.substring(decl.indexOf('(') + 1, decl.lastIndexOf(')'));
          final params = convertParameters(parameters, jsElements);
          partContents += '  external factory _${jsElmt.name}($params);\n';
        }
        partContents += '\n';

        // add methods
        jsElmt.methods.forEach((methodTr) {
          final decl = methodTr.getElementsByTagName('td')[0].text.trim();
          String returnType =
              methodTr.getElementsByTagName('td')[1].text.trim();
          final methodName = decl.substring(0, decl.indexOf('('));
          final parameters =
              decl.substring(decl.indexOf('(') + 1, decl.lastIndexOf(')'));
          final params = convertParameters(parameters, jsElements);
          returnType = convertType(returnType, jsElements);
          if (methodName.startsWith(new RegExp('get[A-Z]')) && params.isEmpty) {
            final name = methodName[3].toLowerCase() + methodName.substring(4);
            partContents += '  $returnType get $name => _$methodName();\n';
            partContents += '  $returnType _$methodName();\n';
          } else if (methodName.startsWith(new RegExp('set[A-Z]')) &&
              !params.contains(',')) {
            final name = methodName[3].toLowerCase() + methodName.substring(4);
            final p = params.substring(params.lastIndexOf(' '));
            partContents += '  void set $name($params) => _$methodName($p);\n';
            partContents += '  void _$methodName($params);\n';
          } else {
            partContents += '  $returnType $methodName($params);\n';
          }
        });
        partContents += '\n';

        // add properties
        jsElmt.properties.forEach((propertiesTr) {
          final name = propertiesTr.getElementsByTagName('td')[0].text.trim();
          String type = propertiesTr.getElementsByTagName('td')[1].text.trim();
          type = convertType(type, jsElements);
          partContents += '  $type $name;\n';
        });
        partContents += '\n';

        // add events
        jsElmt.events.forEach((eventsTr) {
          String name = eventsTr.getElementsByTagName('td')[0].text.trim();
          String type = eventsTr.getElementsByTagName('td')[1].text.trim();
          if (type.contains(',')) throw 'multiple args on event not supported';
          type = convertType(type, jsElements);

          final streamName = 'on' +
              name[0].toUpperCase() +
              name.substring(1).replaceAllMapped(
                  new RegExp('_[a-z]'), (m) => m[0][1].toUpperCase());
          if (type == 'void') {
            partContents += '''
Stream get $streamName => getStream(this, #$streamName, "$name");
''';
          } else if (<String>[
            'num',
            'JsObject',
            'String',
            'bool'
          ].contains(type)) {
            partContents += '''
Stream<$type> get $streamName => getStream(this, #$streamName, "$name");
''';
          } else {
            partContents += '''
Stream<$type> get $streamName => getStream(
  this, #$streamName, "$name", (JsObject o) => new $type.created(o));
''';
          }
        });

        partContents += '}\n';
      }

      partContents = new DartFormatter().format(partContents);
      jsElmt.file.writeAsStringSync(partContents);
    });
  });
}

String convertParameters(String parameters, List<JsElement> jsElements) {
  final paramsParts = <String>[];
  var parenthesisDeepth = 0;
  final buffer = new StringBuffer();
  for (int i = 0; i < parameters.length; i++) {
    var c = parameters[i];
    if (c == ',' && parenthesisDeepth == 0) {
      paramsParts.add(buffer.toString());
      buffer.clear();
      continue;
    }
    if (c == '(') parenthesisDeepth++;
    else if (c == ')') parenthesisDeepth--;
    buffer.write(c);
  }
  if (buffer.isNotEmpty) paramsParts.add(buffer.toString());

  bool flagOpt = false;
  var params = paramsParts.map((p) => p.split(':')).map((e) {
    var result = '';
    var name = e[0];
    var type = (e.length == 1) ? '' : e[1];

    if (name.endsWith('?')) {
      name = name.substring(0, name.length - 1);
      if (flagOpt == false) {
        flagOpt = true;
        result += '[';
      }
    }

    result += convertParam(type, jsElements, name);
    return result;
  }).join(', ');
  if (flagOpt) params += ']';
  return params;
}

String convertParam(String type, List<JsElement> jsElements, String name) {
  if (type.startsWith('function(')) {
    return convertType(type, jsElements, name: name);
  } else {
    return convertType(type, jsElements) + ' $name';
  }
}

String convertType(String type, List<JsElement> jsElements, {String name}) {
  type = type.trim();
  if (type == 'boolean') type = 'bool';
  else if (type == 'number') type = 'num';
  else if (type == 'string') type = 'String';
  else if (type == 'Date') type = 'DateTime';
  else if (type == 'HTMLInputElement') type = 'InputElement';
  else if (type == 'Event') type = 'JsObject';
  else if (type == 'Array') type = 'List';
  else if (type == 'None') type = 'void';
  else if (type == '*') type = 'dynamic';
  else if (type.contains('|')) type = 'dynamic/*$type*/';
  else if (type.startsWith('Object<') && type.endsWith('>')) {
    final innerType = convertType(
        type.substring('Object<'.length, type.length - 1), jsElements,
        name: name);
    type = 'Map<String, $innerType>';
  } else if (type.startsWith('Array<') && type.endsWith('>')) {
    final innerType = convertType(
        type.substring('Array<'.length, type.length - 1), jsElements,
        name: name);
    type = 'List<$innerType>';
  } else if (type.startsWith('function(')) {
    final functionParams =
        type.substring('function('.length, type.length - 1).split(',');
    int i = 1;
    final params = functionParams
        .map((p) => convertType(p, jsElements))
        .map((p) => '$p p${i++}')
        .join(',');
    type = '$name($params)';
    if (name == null) 'dynamic/*$type*/';
  } else if (jsElements.any((e) => e.id == type)) {
    type = jsElements.firstWhere((e) => e.id == type).name;
  }
  return type;
}

String getExtends(Element title) {
  var e = title;
  while (true) {
    e = e.nextElementSibling;
    if (e == null || e.localName != 'p') return null;
    if (e.text.startsWith('This class extends')) {
      return e.querySelector('a').attributes['href'].substring(1);
    }
  }
}

class JsElement {
  final String id;
  final File file;
  final Element element;

  JsElement(this.id, this.file, this.element);

  String get name => customClassName.containsKey(id)
      ? customClassName[id]
      : id.replaceAll('.', '');

  String get fullName {
    final title = element.querySelector('h2');
    final path = title.querySelector('span[itemprop="path"]');
    var name = title.querySelector('span[itemprop="name"]').text.trim();
    if (path != null && path.text.trim().isNotEmpty) {
      name = path.text.trim() + '.' + name;
    }
    return name;
  }

  Element get constructor =>
      element.querySelector(r"table[summary$='Constructor']>tbody>tr");

  List<Element> get methods =>
      element.querySelectorAll(r"table[summary$='Methods']>tbody>tr");

  List<Element> get properties =>
      element.querySelectorAll(r"table[summary$='Properties']>tbody>tr");

  List<Element> get constants =>
      element.querySelectorAll(r"table[summary$='Constants']>tbody>tr");

  List<Element> get events =>
      element.querySelectorAll(r"table[summary$='Events']>tbody>tr");

  bool get isNamespace =>
      element.querySelector('h2').text.trim().endsWith('namespace');
  bool get isEnum => element.querySelector('h2').text
          .trim()
          .endsWith('class') &&
      element.querySelectorAll('h3').every((e) => e.text.trim() == 'Constant');
  bool get isClass => element.querySelector('h2').text
          .trim()
          .endsWith('class') &&
      !element.querySelectorAll('h3').every((e) => e.text.trim() == 'Constant');
  bool get isAnonymousObject =>
      element.querySelector('h2').text.trim().endsWith('object specification');
  bool get isTypeDef =>
      element.querySelector('h2').text.trim().endsWith('typedef');
}

String underscores(String name) => name
    .replaceAllMapped(
        new RegExp('([a-z])([A-Z])'), (m) => '${m[1]}_${m[2].toLowerCase()}')
    .replaceAll('-', '_')
    .replaceAll('.', '_')
    .toLowerCase();
