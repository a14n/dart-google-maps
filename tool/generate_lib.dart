import 'dart:async';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart' show parse;
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;
import 'package:petitparser/core.dart';

import 'types.dart';

const licence = '''
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

Future<void> main() async {
  const docBaseUrl = 'https://developers.google.com';
  final projectHome = '${path.dirname(Platform.script.path)}/..';

  await generatePrivateLibs(projectHome, docBaseUrl);
  await generatePublicLibs(projectHome, docBaseUrl);

  await Process.run(
    'dart',
    ['fix', '--apply', 'lib/src/generated'],
    workingDirectory: projectHome,
  );
  await Process.run(
    'dart',
    ['format', 'lib/src/generated'],
    workingDirectory: projectHome,
  );
}

Future<void> generatePrivateLibs(
  String projectHome,
  String docBaseUrl,
) async {
  // collect libraries
  final response = await http.get(
      Uri.parse('$docBaseUrl/maps/documentation/javascript/reference?hl=en'));
  final document = parse(response.body);
  final libPages = document.querySelectorAll('h3[data-text]').map((e) {
    final a = e.getElementsByTagName('a').first;
    return (
      id: e.id,
      title: a.text,
      url: a.attributes['href']!,
    );
  }).toList()
    ..removeWhere((l) => l.id == 'library-interfaces');

  // generate part files
  final genFolder = '$projectHome/lib/src/generated';
  if (Directory(genFolder).existsSync())
    Directory(genFolder).deleteSync(recursive: true);
  final libs = [
    for (final (:id, :title, :url) in libPages)
      await generatedElementsFromPage('$docBaseUrl$url', id, genFolder),
  ];

  // generate private libraries
  for (final lib in libs) {
    final libFile = File('$genFolder/${lib.name}.dart');
    await libFile.writeAsString([
      licence,
      "import 'dart:js_interop';",
      ...buildImports([...libs, ...externalLibs], lib),
      for (final element in lib.elements.sortedBy((e) => e.fileName))
        "part '${lib.name}/${element.fileName}';",
    ].join('\n'));
  }
}

List<String> buildImports(List<Lib> libs, Lib lib) {
  final depsBylib = lib.dependencies.groupSetsBy((dep) => libs
      .where((l) => l.elements.expand((e) => e.names).contains(dep))
      .firstOrNull);
  return [
    for (final (libName, elements) in depsBylib.entries
        .whereNotNull()
        .where((e) => e.key != lib)
        .where((e) => e.key != null)
        .map((e) {
      final libName = e.key!.name;
      return (
        libName.startsWith('dart:') ? libName : '$libName.dart',
        e.value.toList()..sort(),
      );
    }))
      "import '$libName' show ${elements.join(', ')};",
  ].sorted();
}

/// Generates public libraries (collection of private libraries)
Future<void> generatePublicLibs(
  String projectHome,
  String docBaseUrl,
) async {
  final publicLibsFolder = '$projectHome/lib';
  await Directory(publicLibsFolder)
      .list()
      .where((f) => path.basename(f.path).startsWith('google_maps_'))
      .forEach((f) {
    f.deleteSync();
  });
  final response = await http.get(Uri.parse(
      '$docBaseUrl/maps/documentation/javascript/reference/library-interfaces?hl=en'));
  final document = parse(response.body);
  final publicLibs = document
      .querySelectorAll('h2')
      .map((e) => (
            id: e.attributes['id']!.replaceAll('Library', '').toLowerCase(),
            privateLibs: e.parent!
                .querySelectorAll('code>a[href^="/"]')
                .map((e) {
                  final href = e.attributes['href']!;
                  return href
                      .substring(href.lastIndexOf('/') + 1, href.indexOf('#'))
                      .replaceAll('-', '_');
                })
                .toSet()
                .toList()
              ..sort(),
          ))
      .toList();
  for (final (:id, :privateLibs) in publicLibs) {
    final libFile = File('$publicLibsFolder/google_maps_$id.dart');
    await libFile.writeAsString([
      licence,
      for (final privateLib in privateLibs)
        "export 'src/generated/$privateLib.dart';",
    ].join('\n'));
  }
}

final externalLibs = <Lib>[
  (
    name: 'dart:async',
    dependencies: {},
    elements: [
      (fileName: '', names: {'Stream', 'StreamController'}),
    ],
  ),
  (
    name: 'dart:js_interop_unsafe',
    dependencies: {},
    elements: [
      (fileName: '', names: {'JSObjectUnsafeUtilExtension'}),
    ],
  ),
  (
    name: 'package:web/web',
    dependencies: {},
    elements: [
      (
        fileName: '',
        names: {
          'Document',
          'Element',
          'Event',
          'HTMLElement',
          'HTMLInputElement',
          'Node',
          'WebGLRenderingContext',
        }
      ),
    ],
  ),
  (
    name: '/src/js/date',
    dependencies: {},
    elements: [
      (fileName: '', names: {'Date'}),
    ],
  ),
  (
    name: '/src/js/error',
    dependencies: {},
    elements: [
      (fileName: '', names: {'JSError'}),
    ],
  ),
  (
    name: '/src/js/iterable',
    dependencies: {},
    elements: [
      (fileName: '', names: {'JSIterable'}),
    ],
  ),
];

typedef Lib = ({
  String name,
  List<({Set<String> names, String fileName})> elements,
  Set<String> dependencies,
});

Future<Lib> generatedElementsFromPage(
  String url,
  String id,
  String genFolder,
) async {
  final libName = id.replaceAll('-', '_');
  final libDir = '$genFolder/$libName';
  await Directory(libDir).create(recursive: true);
  final response = await http.get(Uri.parse('$url?hl=en'));
  final document = parse(response.body);
  final elements = <({Set<String> names, String fileName})>[];
  final dependencies = <String>{};
  for (final element in document.querySelectorAll('h2[data-text]')) {
    final [fullName, ...type] =
        element.nextElementSibling!.text.trim().split(RegExp('[ \n]+'));
    final generate = switch (type) {
      ['class'] => generateClass,
      ['abstract', 'class'] => generateClass,
      ['interface'] => generateInterface,
      ['constants'] => generateConstants,
      ['typedef'] => generateTypedef,
      ['namespace'] => generateNamespace,
      final e => throw FormatException('$e'),
    };
    final elementName = translateType(fullName).split('<').first;
    final fileName = '${elementName.camel2snake}.dart';
    final file = File('$libDir/$fileName')..createSync();
    final generateResult = generate(fullName, element.parent!);
    dependencies.addAll(generateResult.dependencies);
    await file.writeAsString([
      licence,
      "part of '../$libName.dart';",
      generateResult.content,
    ].join('\n'));
    elements.add((
      names: {elementName, ...generateResult.extraElements},
      fileName: fileName,
    ));
  }
  return (name: libName, elements: elements, dependencies: dependencies);
}

typedef GenerateResult = ({
  String content,
  Set<String> dependencies,
  Set<String> extraElements,
});

GenerateResult generateClass(
  String fullName,
  Element element,
) {
  final fullNameWithoutGenerics = fullName.split('<').first;
  final nameWithGenerics = translateType(fullName);
  return generateExtensionType(
    element,
    nameWithGenerics: switch (nameWithGenerics.split('<').first) {
      'MVCArray' => 'MVCArray<T extends JSAny?>',
      _ => nameWithGenerics,
    },
    jsType: fullNameWithoutGenerics,
  );
}

GenerateResult generateInterface(
  String fullName,
  Element element,
) {
  final nameWithGenerics = translateType(fullName);
  return generateExtensionType(
    element,
    nameWithGenerics: nameWithGenerics,
    jsType: null,
    isInterface: true,
  );
}

GenerateResult generateConstants(
  String fullName,
  Element element,
) {
  final fullNameWithoutGenerics = fullName.split('<').first;
  final nameWithGenerics = translateType(fullName);
  return generateExtensionType(
    element,
    nameWithGenerics: nameWithGenerics,
    jsType: fullNameWithoutGenerics,
    isConstant: true,
  );
}

GenerateResult generateTypedef(
  String fullName,
  Element element,
) {
  final className = fullName.split('.').last;
  element.children.last.text;
  return (
    content:
        'typedef $className = ${translateType(element.children.last.text)};',
    dependencies: {},
    extraElements: {},
  );
}

GenerateResult generateNamespace(
  String fullName,
  Element element,
) {
  final fullNameWithoutGenerics = fullName.split('<').first;
  final nameWithGenerics = translateType(fullName);
  final result = generateExtensionType(
    element,
    nameWithGenerics: '_$nameWithGenerics',
    jsType: null,
    isNamespace: true,
  );
  return (
    content: [
      "@JS('$fullNameWithoutGenerics')",
      'external _$nameWithGenerics get ${fullNameWithoutGenerics.split('.').last};',
      result.content,
    ].join('\n'),
    dependencies: result.dependencies,
    extraElements: result.extraElements,
  );
}

GenerateResult generateExtensionType(
  Element element, {
  required String nameWithGenerics,
  required String? jsType,
  bool isConstant = false,
  bool isNamespace = false,
  bool isInterface = false,
}) {
  assert([isNamespace, isConstant].where((v) => v).length <= 1);
  final name = nameWithGenerics.split('<').first;
  var parentImplements = extractImplements(element);
  final parentExtends = isConstant
      ? 'JSAny'
      : extractExtends(element) ?? parentImplements ?? 'JSObject';
  if (parentExtends == parentImplements) {
    parentImplements = null;
  }
  final constructor = extractConstructor(element);
  final constants = extractConstants(element);
  final properties = extractProperties(element);
  final events =
      extractEvents(element).where((e) => !e.name.contains('-')).toList();
  final methods = [
    for (final method in extractMethods(element, false))
      (isStatic: false, method: method),
    for (final method in extractMethods(element, true))
      (isStatic: !isNamespace, method: method),
  ];

  // customizations
  final customDependencies = <String>{};
  final customConstructors = <String>[];
  final customCode = <String>[];
  final customTopLevelCode = <String>[];
  final customImplements = <String>[];
  final extraElements = <String>{};
  switch (name) {
    case 'Map':
      extraElements.add('MapMouseEventOrIconMouseEvent');
      customTopLevelCode.add(r'''
extension type MapMouseEventOrIconMouseEvent._(JSObject _)
    implements JSObject {}

extension MapMouseEventOrIconMouseEvent$Ext on MapMouseEventOrIconMouseEvent {
  external LatLng? latLng;
}''');

      // change some nullity to allow having getter/setter and avoid issue
      final gettersToUnnull = [
        'getCenter',
        'getClickableIcons',
        'getHeading',
        'getHeadingInteractionEnabled',
        'getMapTypeId',
        'getTilt',
        'getTiltInteractionEnabled',
        'getZoom',
      ];
      for (final method in methods) {
        final methodName = method.method.name;
        if (!gettersToUnnull.contains(methodName)) continue;
        method.method.jsReturnType = method.method.jsReturnType
            .split('|')
            .map((e) => e.trim())
            .where((e) => !{'null', 'undefined'}.contains(e))
            .join('|');
      }
      customCode.add('''
  bool isCenterDefined() => callMethod('getCenter'.toJS) != null;
  bool isClickableIconsDefined() => callMethod('getClickableIcons'.toJS) != null;
  bool isHeadingDefined() => callMethod('getHeading'.toJS) != null;
  bool isHeadingInteractionEnabledDefined() => callMethod('getHeadingInteractionEnabled'.toJS) != null;
  bool isMapTypeIdDefined() => callMethod('getMapTypeId'.toJS) != null;
  bool isTiltDefined() => callMethod('getTilt'.toJS) != null;
  bool isTiltInteractionEnabledDefined() => callMethod('getTiltInteractionEnabled'.toJS) != null;
  bool isZoomDefined() => callMethod('getZoom'.toJS) != null;
''');
      customDependencies.add('JSObjectUnsafeUtilExtension');

      // simplify controls usage
      customCode.add('''
  MVCArray<HTMLElement> getControlsAt(ControlPosition position) =>
      controls[(position as JSNumber).toDartInt];''');
      customDependencies.add('ControlPosition');

    case 'MapMouseEvent':
      customImplements.add('MapMouseEventOrIconMouseEvent');

    case 'IconMouseEvent':
      customImplements.add('MapMouseEventOrIconMouseEvent');

    case 'LatLng':
      customConstructors.addAll([
        '  external LatLng(num lat, num lng, [bool? noClampNoWrap]);',
        '  external LatLng.copy(LatLngOrLatLngLiteral latLng, [bool? noClampNoWrap]);',
      ]);
      customImplements.add('LatLngOrLatLngLiteral');
      extraElements.add('LatLngOrLatLngLiteral');
      customTopLevelCode.add(r'''
extension type LatLngOrLatLngLiteral._(JSObject _) implements JSObject {}

extension LatLngOrLatLngLiteral$Ext on LatLngOrLatLngLiteral {
  num get lat {
    if (isA<LatLng>()) {
      return (this as LatLng).lat;
    } else {
      return (this as LatLngLiteral).lat;
    }
  }

  num get lng {
    if (isA<LatLng>()) {
      return (this as LatLng).lng;
    } else {
      return (this as LatLngLiteral).lng;
    }
  }
}''');

    case 'LatLngLiteral':
      customImplements.add('LatLngOrLatLngLiteral');

    case 'LatLngBounds':
      customConstructors.addAll([
        '  external LatLngBounds(LatLngOrLatLngLiteral sw, LatLngOrLatLngLiteral ne);',
        '  external LatLngBounds.empty();',
        '  external LatLngBounds.copy(LatLngBoundsOrLatLngBoundsLiteral latLngBounds);',
      ]);
      customImplements.add('LatLngBoundsOrLatLngBoundsLiteral');
      extraElements.add('LatLngBoundsOrLatLngBoundsLiteral');
      customTopLevelCode.add(r'''
extension type LatLngBoundsOrLatLngBoundsLiteral._(JSObject _) implements JSObject {}

extension LatLngBoundsOrLatLngBoundsLiteral$Ext on LatLngBoundsOrLatLngBoundsLiteral {
  num get east {
    if (isA<LatLngBounds>()) {
      return (this as LatLngBounds).northEast.lng;
    } else {
      return (this as LatLngBoundsLiteral).east;
    }
  }
  num get north {
    if (isA<LatLngBounds>()) {
      return (this as LatLngBounds).northEast.lat;
    } else {
      return (this as LatLngBoundsLiteral).north;
    }
  }
  num get south {
    if (isA<LatLngBounds>()) {
      return (this as LatLngBounds).southWest.lat;
    } else {
      return (this as LatLngBoundsLiteral).south;
    }
  }
  num get west {
    if (isA<LatLngBounds>()) {
      return (this as LatLngBounds).southWest.lng;
    } else {
      return (this as LatLngBoundsLiteral).west;
    }
  }
}''');

    case 'LatLngBoundsLiteral':
      customImplements.add('LatLngBoundsOrLatLngBoundsLiteral');

    case 'Circle':
      customConstructors.addAll([
        '  external Circle(CircleOptions opts);',
        '  external Circle.copy(Circle circle);',
        '  external Circle.copyLiteral(CircleLiteral circle);',
      ]);

    case 'Projection':
      customDependencies.addAll([
        'JSObjectUnsafeUtilExtension',
        'LatLngOrLatLngLiteral',
        'Point',
        'LatLng',
      ]);
      customConstructors
          .add('factory Projection() => JSObject() as Projection;');
      customCode.add('''
  Point? Function(
    LatLngOrLatLngLiteral latLng, [
    Point? point,
  ]) get fromLatLngToPoint {
    final function = (getProperty('fromLatLngToPoint'.toJS) as JSObject).callMethod('bind'.toJS, [this].toJS) as JSFunction;
    return (latLng, [point]) => function.callAsFunction(null, latLng, point) as Point?;
  }
  void set fromLatLngToPoint(Point? Function(
    LatLngOrLatLngLiteral latLng, [
    Point? point,
  ]) fromLatLngToPoint) => setProperty('fromLatLngToPoint'.toJS, fromLatLngToPoint.toJS);
  LatLng? Function(
    Point? pixel, [
    bool? noClampNoWrap,
  ]) get fromPointToLatLng {
    final function = (getProperty('fromPointToLatLng'.toJS) as JSObject).callMethod('bind'.toJS, [this].toJS) as JSFunction;
    return (pixel, [noClampNoWrap]) => function.callAsFunction(null, pixel, noClampNoWrap?.toJS) as LatLng?;
  }
  void set fromPointToLatLng(LatLng? Function(
    Point pixel, [
    bool? noClampNoWrap,
  ]) fromPointToLatLng) => setProperty('fromPointToLatLng'.toJS, fromPointToLatLng.toJS);
      ''');
      methods.removeWhere((e) =>
          {'fromLatLngToPoint', 'fromPointToLatLng'}.contains(e.method.name));

    case 'OverlayView':
      customDependencies.add('JSObjectUnsafeUtilExtension');
      customCode.add('''
  void set onAdd(void Function() onAdd) => setProperty('onAdd'.toJS, onAdd.toJS);
  void set onRemove(void Function() onRemove) => setProperty('onRemove'.toJS, onRemove.toJS);
  void set draw(void Function() draw) => setProperty('draw'.toJS, draw.toJS);
      ''');
      methods.removeWhere(
          (e) => {'onAdd', 'onRemove', 'draw'}.contains(e.method.name));

    case 'MapType':
      customDependencies.addAll([
        'JSObjectUnsafeUtilExtension',
        'Point',
        'Element',
        'Document',
      ]);
      customCode.add('''
  Element? Function(
    Point? tileCoord,
    num? zoom,
    Document? ownerDocument,
  ) get getTile {
    final function = (getProperty('getTile'.toJS) as JSObject).callMethod('bind'.toJS, [this].toJS) as JSFunction;
    return (tileCoord, zoom, ownerDocument) => function.callAsFunction(null, tileCoord, zoom?.toJS, ownerDocument) as Element?;
  }
  void set getTile(Element? Function(
    Point tileCoord,
    num zoom,
    Document ownerDocument,
  ) getTile) => setProperty('getTile'.toJS, getTile.toJS);
  void Function([Element? tile]) get releaseTile {
    final function = (getProperty('releaseTile'.toJS) as JSObject).callMethod('bind'.toJS, [this].toJS) as JSFunction;
    return ([tile]) => function.callAsFunction(null, tile);
  }
  void set releaseTile(void Function(
    Element? tile,
  ) releaseTile) => setProperty('releaseTile'.toJS, releaseTile.toJS);
      ''');
      methods.removeWhere(
          (e) => {'getTile', 'releaseTile'}.contains(e.method.name));
    case 'ImageMapType':
      methods.removeWhere(
          (e) => {'getTile', 'releaseTile'}.contains(e.method.name));
    case 'StyledMapType':
      methods.removeWhere(
          (e) => {'getTile', 'releaseTile'}.contains(e.method.name));
    case 'StreetViewTileData':
      customDependencies.addAll([
        'JSObjectUnsafeUtilExtension',
        'Point',
        'Element',
        'Document',
      ]);
      customCode.add('''
  void set getTileUrl(String Function(
    String pano,
    num tileZoom,
    num tileX,
    num tileY,
  ) getTileUrl) => setProperty('getTileUrl'.toJS, getTileUrl.toJS);
      ''');
      methods.removeWhere((e) => e.method.name == 'getTileUrl');
    case 'WebGLOverlayView':
      customDependencies.addAll([
        'JSObjectUnsafeUtilExtension',
        'Point',
        'Element',
        'Document',
      ]);
      customCode.add('''
  void set onAdd(void Function() onAdd) => setProperty('onAdd'.toJS, onAdd.toJS);
  void set onContextLost(void Function() onContextLost) => setProperty('onContextLost'.toJS, onContextLost.toJS);
  void set onContextRestored(void Function(WebGLStateOptions options) onContextRestored) => setProperty('onContextRestored'.toJS, onContextRestored.toJS);
  void set onDraw(void Function(WebGLDrawOptions options) onDraw) => setProperty('onDraw'.toJS, onDraw.toJS);
  void set onRemove(void Function() onRemove) => setProperty('onRemove'.toJS, onRemove.toJS);
  void set onStateUpdate(void Function(WebGLStateOptions options) onStateUpdate) => setProperty('onStateUpdate'.toJS, onStateUpdate.toJS);
      ''');
      methods.removeWhere((e) => {
            'onAdd',
            'onContextLost',
            'onContextRestored',
            'onDraw',
            'onRemove',
            'onStateUpdate',
          }.contains(e.method.name));

    case 'DataPoint':
    case 'DataMultiPoint':
    case 'DataLineString':
    case 'DataMultiLineString':
    case 'DataLinearRing':
    case 'DataPolygon':
    case 'DataMultiPolygon':
    case 'DataGeometryCollection':
      methods.removeWhere(
          (e) => {'forEachLatLng', 'getType'}.contains(e.method.name));
    case 'event':
      final triggerMethod =
          methods.firstWhere((e) => e.method.name == 'trigger');
      final eventArgsParameter = triggerMethod.method.parameters
          .firstWhere((e) => e.name == 'eventArgs');
      triggerMethod.method.parameters.remove(eventArgsParameter);
      triggerMethod.method.optionalParameters.add(eventArgsParameter);
  }
  for (final method in methods) {
    if (method.method.returnType.startsWith('JSPromise<') &&
        method.method.optionalParameters.lastOrNull?.name == 'callback') {
      method.method.optionalParameters.removeLast();
    }
  }

  if (methods.any((e) => e.method.name == 'getMap')) {
    final getMapMethod =
        methods.firstWhere((e) => e.method.name == 'getMap').method;
    getMapMethod.jsReturnType =
        getMapMethod.jsReturnType.split('|').followedBy(['null']).join('|');
  }
  if (methods.any((e) =>
      e.method.name == 'setMap' &&
      e.method.parameters.isNotEmpty &&
      !e.method.parameters.first.jsType.endsWith(' optional'))) {
    final setMapMethod =
        methods.firstWhere((e) => e.method.name == 'setMap').method;
    setMapMethod.parameters.first.jsType = setMapMethod.parameters.first.jsType
        .split('|')
        .followedBy(['null']).join('|');
  }

  String? canBeGetter(bool isStatic, Method method) {
    if (name == 'LatLng' && {'lat', 'lng'}.contains(method.name)) {
      return method.name;
    }
    if (!(method.name.startsWith(RegExp('get[A-Z]')) &&
        method.parameters.isEmpty)) {
      return null;
    }
    final accessorName =
        method.name[3].toLowerCase() + method.name.substring(4);
    return accessorName;
  }

  (String, Parameter)? canBeSetter(bool isStatic, Method method) {
    if (name == 'LatLng' && {'lat', 'lng'}.contains(method.name)) {
      return (method.name, method.parameters.first);
    }
    if (!(method.name.startsWith(RegExp('set[A-Z]')) &&
        (method.parameters.length + method.optionalParameters.length) == 1)) {
      return null;
    }
    final accessorName =
        method.name[3].toLowerCase() + method.name.substring(4);
    return (
      accessorName,
      [...method.parameters, ...method.optionalParameters].first,
    );
  }

  return (
    content: [
      if (jsType != null) "@JS('$jsType')",
      'extension type $nameWithGenerics._($parentExtends _) implements ${[
        parentExtends,
        if (parentImplements != null) parentImplements,
        ...customImplements,
      ].join(', ')} {',
      ...customConstructors,
      if (constructor != null) ...[
        '  external ${constructor.name + (customConstructors.isNotEmpty ? r'.js' : '')}(',
        for (final p in constructor.parameters) '${p.type} ${p.name},',
        if (constructor.optionalParameters.isNotEmpty) ...[
          '[',
          for (final p in constructor.optionalParameters)
            '${p.type} ${p.name},',
          ']',
        ],
        ');',
      ],
      if (jsType == null && properties.isNotEmpty) ...[
        '  external $name({',
        for (final property in properties)
          '    ${property.type} ${property.name},',
        '});',
      ],
      ...customCode,
      for (final constant in constants)
        '  external static ${isConstant ? name : getTypeForClassConstant(name, constant.name)} get ${constant.name};',
      for (final property in properties) property.generateDartCode(),
      for (final (:isStatic, :method) in methods) ...[
        if (canBeGetter(isStatic, method) case final String getterName) ...[
          "  @JS('${method.name}')",
          '  external ${isStatic ? 'static' : ''} ${method.returnType} _${method.name}();',
          '  ${isStatic ? 'static' : ''} ${method.returnType} get $getterName => _${method.name}();',
        ] else if (canBeSetter(isStatic, method)
            case (final setterName, final param)) ...[
          "  @JS('${method.name}')",
          '  external ${isStatic ? 'static' : ''} ${method.returnType} _${method.name}(${param.type} ${param.name});',
          '  ${isStatic ? 'static' : ''} ${method.returnType} set $setterName(${param.type} ${param.name}) => _${method.name}(${param.name});',
        ] else if (method.returnType.startsWith('JSPromise<')) ...[
          "  @JS('${method.name}')",
          '  external ${isStatic ? 'static' : ''} ${method.returnType} _${method.name}(',
          for (final p in method.parameters) '    ${p.type} ${p.name},',
          if (method.optionalParameters.isNotEmpty) ...[
            '[',
            for (final p in method.optionalParameters)
              '    ${p.type} ${p.name},',
            ']',
          ],
          '  );',
          '  ${isStatic ? 'static' : ''} ${method.returnType.replaceFirst('JSPromise', 'Future')} ${method.name}(',
          for (final p in method.parameters) '    ${p.type} ${p.name},',
          if (method.optionalParameters.isNotEmpty) ...[
            '[',
            for (final p in method.optionalParameters)
              '    ${p.type} ${p.name},',
            ']',
          ],
          '  ) => _${method.name}(${[
            ...method.parameters,
            ...method.optionalParameters,
          ].map((e) => e.name).join(', ')}).toDart;',
        ] else ...[
          if (method.name == 'toString') "  @JS('toString')",
          '  external ${isStatic ? 'static' : ''} ${method.returnType} ${method.name + (method.name == 'toString' ? r'$js' : '')}(',
          for (final p in method.parameters) '    ${p.type} ${p.name},',
          if (method.optionalParameters.isNotEmpty) ...[
            '[',
            for (final p in method.optionalParameters)
              '    ${p.type} ${p.name},',
            ']',
          ],
          '  );',
        ]
      ],
      for (final event in events) generateCodeForEvent(event),
      '}',
      ...customTopLevelCode,
    ].join('\n'),
    dependencies: {
      parentExtends,
      if (parentImplements != null) parentImplements,
      if (constructor != null) ...[
        for (final parameter in constructor.parameters) parameter.type,
        for (final parameter in constructor.optionalParameters) parameter.type,
      ],
      if (!isConstant)
        for (final constant in constants)
          getTypeForClassConstant(name, constant.name),
      for (final property in properties) property.type,
      for (final (isStatic: _, :method) in methods) ...[
        method.returnType,
        for (final parameter in method.parameters) parameter.type,
        for (final parameter in method.optionalParameters) parameter.type,
      ],
      if (events.isNotEmpty) ...[
        'event',
        'MapsEventListener',
        'Stream',
        'StreamController',
        for (final event in events)
          for (final parameter in event.parameters) parameter.type,
      ],
      ...customDependencies,
    }.expand((e) => e.split(RegExp(r'\W+'))).toSet(),
    extraElements: extraElements,
  );
}

String? extractExtends(Element element) {
  final parent = element
      .querySelectorAll('>p')
      .firstWhereOrNull((e) => e.text.startsWith(
          RegExp(r'This (abstract )?(class|interface) extends\W+\w+\.')))
      ?.querySelector('code')
      ?.text;
  return parent == null ? null : translateType(parent);
}

String? extractImplements(Element element) {
  final parent = element
      .querySelectorAll('>p')
      .firstWhereOrNull((e) => e.text.startsWith(
          RegExp(r'This (abstract )?(class|interface) implements\W+\w+\.')))
      ?.querySelector('code')
      ?.text;
  return parent == null ? null : translateType(parent);
}

String generateCodeForEvent(
    ({
      String doc,
      String name,
      List<({String name, String type})> parameters
    }) event) {
  final (streamType, listenerSignature, addParams) = switch (event.parameters) {
    [] => ('void', '', 'null'),
    [final parameter] => (parameter.type, '${parameter.type} e', 'e'),
    final parameters => (
        '({${parameters.map((e) => '${e.type} ${e.name}').join(', ')}})',
        '${parameters.map((e) => '${e.type} ${e.name}').join(', ')}',
        '(${parameters.map((e) => '${e.name}: ${e.name}').join(', ')})',
      ),
  };
  return '''
  Stream<$streamType> get on${event.name.split('_').map((e) => e.capitalized).join()} {
    late StreamController<$streamType> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
      this,
      '${event.name}',
      (($listenerSignature) => sc.add($addParams)).toJS,
    );
    void stop() => mapsEventListener.remove();
    sc = StreamController<$streamType>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }''';
}

String getTypeForClassConstant(String className, String constantName) =>
    switch ((className, constantName)) {
      ('LatLngBounds', 'MAX_BOUNDS') => 'LatLngBounds',
      ('Map', 'DEMO_MAP_ID') => 'JSAny?',
      ('Marker', 'MAX_ZINDEX') => 'int',
      ('_maps', 'version') => 'String',
      _ => throw StateError('unspecified type for $className.$constantName')
    };

class Parameter {
  Parameter({
    required this.name,
    required this.jsType,
    required this.doc,
  });
  final String name;
  String jsType;
  final String doc;
  String get type => translateType(jsType);
}

class Constructor {
  Constructor({
    required this.name,
    required this.doc,
    required this.parameters,
    required this.optionalParameters,
  });
  final String name;
  final String doc;
  final List<Parameter> parameters;
  final List<Parameter> optionalParameters;
}

Constructor? extractConstructor(
  Element element,
) {
  final constructors =
      element.querySelectorAll('table.constructors>tbody>tr').map((e) {
    final name = translateType(e.children[0].text);
    final other = e.children[1];
    final parameters = extractParameters(other.children
        .where((e) => e.classes.contains('parameters'))
        .firstOrNull);
    final doc = other.text;
    final optionalIndex =
        doc.contains('[') ? doc.indexOf('[') : double.infinity;
    return Constructor(
      name: name,
      doc: doc,
      parameters: parameters
          .takeWhile((p) => doc.indexOf(p.name) < optionalIndex)
          .toList(),
      optionalParameters: parameters
          .skipWhile((p) => doc.indexOf(p.name) < optionalIndex)
          .toList(),
    );
  }).toList();
  assert(constructors.length < 2);
  return constructors.firstOrNull;
}

class Method {
  Method({
    required this.name,
    required this.doc,
    required this.parameters,
    required this.optionalParameters,
    required this.jsReturnType,
  });
  final String name;
  final String doc;
  final List<Parameter> parameters;
  final List<Parameter> optionalParameters;
  String jsReturnType;
  String get returnType => translateType(jsReturnType);
}

List<Method> extractMethods(
  Element element,
  bool isStatic,
) =>
    element
        .querySelectorAll(
            'table.methods[summary\$=" -${isStatic ? ' Static' : ''} Methods"]'
            '>tbody>tr')
        .map((e) {
      final name = translateType(e.children[0].text);
      final other = e.children[1];
      final parameters = extractParameters(other.children
          .where((e) => e.classes.contains('parameters'))
          .firstOrNull);
      final returnType = other.children
          .where((e) => e.classes.contains('parameters'))
          .map((e) => e.nextElementSibling!)
          .map((e) {
        final code = e.children.where((e) => e.localName == 'code').firstOrNull;
        return code?.text ??
            (e.text.replaceAll(RegExp(r'[  ]+'), ' ') == 'Return Value: None'
                ? 'void'
                : e.text);
      }).first;
      final doc = other.text;
      final optionalIndex =
          doc.contains('[') ? doc.indexOf('[') : double.infinity;
      return Method(
        name: name,
        doc: doc,
        parameters: parameters
            .takeWhile((p) => doc.indexOf(p.name) < optionalIndex)
            .toList(),
        optionalParameters: parameters
            .skipWhile((p) => doc.indexOf(p.name) < optionalIndex)
            .toList(),
        jsReturnType: returnType,
      );
    }).toList();

List<Parameter> extractParameters(
  Element? element,
) {
  if (element == null) return [];
  return element
      .querySelectorAll('ul>li')
      .map((e) => Parameter(
            name:
                e.children.where((e) => e.localName == 'code').toList()[0].text,
            jsType:
                e.children.where((e) => e.localName == 'code').toList()[1].text,
            doc: e.children.last.text,
          ))
      .toList();
}

class Property {
  Property({
    required this.name,
    required this.jsType,
    required this.doc,
  });
  final String name;
  final String jsType;
  final String doc;
  String get type => translateType(jsType);

  String generateDartCode() {
    var accessorName = name;
    if (name.contains('_')) {
      accessorName = name.snake2camel;
    }
    return switch (typeParser.parse(jsType)) {
      Success(
        value: TType(
          name: 'Array',
          :final genericParameters,
          :final optional,
        )
      ) =>
        switch (genericParameters) {
          [TType(name: final paramJSType)]
              when paramJSType == 'string' || paramJSType == 'number' =>
            () {
              final parameterType = switch (paramJSType) {
                'string' => 'String',
                'number' => 'num',
                _ => throw Error(),
              };
              final dartType = 'List<$parameterType>${optional ? '?' : ''}';
              return """
  @JS('$name')
  external $type _$accessorName;
  $dartType get $accessorName => _$accessorName.dartify() as $dartType;
  set $accessorName($dartType value) => _$accessorName = value.jsify() as $type;""";
            }(),
          _ => () {
              final dartType =
                  'List<${toDartType(genericParameters.first, true)}>${optional ? '?' : ''}';
              return """
  @JS('$name')
  external $type _$accessorName;
  $dartType get $accessorName => _$accessorName${optional ? '?' : ''}.toDart;
  set $accessorName($dartType value) => _$accessorName = value${optional ? '?' : ''}.toJS;""";
            }(),
        },
      _ when accessorName != name => """
  @JS('$name')
  external $type _$accessorName;
  $type get $accessorName => _$accessorName;
  set $accessorName($type value) => _$accessorName = value;""",
      _ => 'external $type $name;',
    };
  }
}

List<Property> extractProperties(
  Element element,
) =>
    element.querySelectorAll('table.properties td[itemprop=property]').map((e) {
      final name = e.text.split(' ').first;
      final jsType = e.nextElementSibling!.children
          .where((e) => e.localName == 'div')
          .toList()[0]
          .children[1]
          .text;
      final doc = e.nextElementSibling!.children
          .where((e) => e.localName == 'div')
          .toList()[1]
          .text;
      return Property(
        name: name,
        jsType: jsType,
        doc: doc,
      );
    }).toList();

List<({String name, List<({String name, String type})> parameters, String doc})>
    extractEvents(
  Element element,
) =>
        element
            .querySelectorAll(
                r'table.details[summary$=" - Events"] td[itemprop=property]')
            .map((e) => (
                  name: e.text.split(' ').first,
                  parameters: e.nextElementSibling!.children
                      .where((e) => e.localName == 'div')
                      .toList()[1]
                      .querySelectorAll('ul>li')
                      .map((e) {
                    final [name, type, ...] = e.querySelectorAll('code');
                    return (name: name.text, type: translateType(type.text));
                  }).toList(),
                  doc: e.nextElementSibling!.children
                      .where((e) => e.localName == 'div')
                      .toList()[2]
                      .text,
                ))
            .toList();

class ConstantValue {
  ConstantValue({required this.name, required this.doc});
  String name;
  String doc;
}

List<ConstantValue> extractConstants(Element element) => element
    .querySelectorAll('table.constants td[itemprop=property]')
    .map((e) => ConstantValue(
          name: e.text.split(' ').first,
          doc: e.nextElementSibling!.text,
        ))
    .toList();

String translateType(String type) => switch (typeParser.parse(type)) {
      Success(:final value) => toDartType(value, false),
      _ => 'JSAny?/*UNPARSED:$type*/',
    };

String toDartType(AType value, bool isJS) => switch (value) {
      TUnion(
        types: [TType(name: 'LatLng'), TType(name: 'LatLngLiteral')],
        :final optional,
      ) =>
        'LatLngOrLatLngLiteral${optional ? '?' : ''}',
      TUnion(
        types: [
          TType(name: 'LatLngBounds'),
          TType(name: 'LatLngBoundsLiteral'),
        ],
        :final optional,
      ) =>
        'LatLngBoundsOrLatLngBoundsLiteral${optional ? '?' : ''}',
      TUnion(
        types: [
          TType(name: 'MapMouseEvent'),
          TType(name: 'IconMouseEvent'),
        ],
        :final optional,
      ) =>
        'MapMouseEventOrIconMouseEvent${optional ? '?' : ''}',
      TUnion() => () {
          var optional = value.optional;
          final newTypes = value.types
              .where(
                  (t) => t is! TType || !{'null', 'undefined'}.contains(t.name))
              .toList();
          if (newTypes.isNotEmpty && newTypes.length != value.types.length) {
            if (newTypes.length == 1) {
              return toDartType(newTypes.first..optional = true, isJS);
            }
            optional = true;
          }
          return 'JSAny${optional ? '?' : ''}/*$value*/';
        }(),
      TFunction() => [
          'JSFunction /*',
          toDartType(value.returnType, isJS),
          ' Function(',
          value.parameters.map((e) => toDartType(e, isJS)).join(','),
          ')',
          '*/',
          if (value.optional) '?',
        ].join(),
      TType() => [
          switch (value.name) {
            'boolean' => isJS ? 'JSBoolean' : 'bool',
            'string' => isJS ? 'JSString' : 'String',
            'number' => isJS ? 'JSNumber' : 'num',
            'Float32Array' => 'JSFloat32Array',
            'Float64Array' => 'JSFloat64Array',
            'Array' => 'JSArray',
            'Promise' => 'JSPromise',
            'Function' => 'JSFunction',
            'Iterable' => 'JSIterable',
            'Error' => 'JSError',
            'Object' => 'JSObject',
            final v => () {
                final parts = v.split('.');
                if (parts.last.startsWith(RegExp(r'[a-z]'))) {
                  return parts.last;
                }
                return parts
                    .skipWhile((v) => v.startsWith(RegExp(r'[a-z]')))
                    .join('');
              }(),
          },
          if (value.genericParameters.isNotEmpty) ...[
            '<',
            value.genericParameters.map((e) => toDartType(e, true)).join(','),
            '>',
          ],
          if (value.comment != null) '/*${value.comment}*/',
          if (value.optional) '?',
        ].join(),
    };

extension on String {
  String get snake2camel {
    final parts = split('_');
    return [parts.first, ...parts.skip(1).map((e) => e.capitalized)].join();
  }

  String get camel2snake {
    final parts = [];
    var start = 0;
    for (var i = 1; i < length; i++) {
      if (this[i - 1] == this[i - 1].toLowerCase() &&
          this[i] == this[i].toUpperCase()) {
        parts.add(substring(start, i));
        start = i;
      }
    }
    if (start < length - 1) {
      parts.add(substring(start));
    }
    return parts.map((e) => e.toLowerCase()).join('_');
  }

  String get capitalized => this[0].toUpperCase() + substring(1);
}
