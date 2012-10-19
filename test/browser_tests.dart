// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library jswrap_tests;

import 'dart:html';
import 'package:unittest/unittest.dart';
import 'package:unittest/html_config.dart';

import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart';

injectSource(code) {
  final script = new ScriptElement();
  script.type = 'text/javascript';
  script.innerHTML = code;
  document.body.nodes.add(script);
}

main() {
  useHtmlConfiguration();

  test('jsList', () {
    js.scoped(() {
      injectSource('myArray=[];');
      final myArray = new JsList.fromJsProxy(js.context.myArray, null);
      expect(myArray.length, equals(0));
      // []

      myArray.add("e0");
      expect(myArray.length, equals(1));
      expect(myArray[0], equals("e0"));
      // ["e0"]

      myArray.addAll(["e1", "e2"]);
      expect(myArray.length, equals(3));
      expect(myArray[0], equals("e0"));
      expect(myArray[1], equals("e1"));
      expect(myArray[2], equals("e2"));
      // ["e0", "e1", "e2"]

      myArray.length = 5;
      expect(myArray.length, equals(5));
      expect(myArray[0], equals("e0"));
      expect(myArray[1], equals("e1"));
      expect(myArray[2], equals("e2"));
      expect(myArray[3], isNull);
      expect(myArray[4], isNull);
      // ["e0", "e1", "e2", null, null]

      expect(() => myArray.length = 0, throws);
      expect(myArray.length, equals(5));
      // ["e0", "e1", "e2", null, null]

      myArray[3] = "e4";
      myArray[4] = "e3";
      expect(myArray.length, equals(5));
      expect(myArray[3], equals("e4"));
      expect(myArray[4], equals("e3"));
      // ["e0", "e1", "e2", "e4", "e3"]

      myArray.sort((String a, String b) => a.compareTo(b));
      expect(myArray.length, equals(5));
      expect(myArray[0], equals("e0"));
      expect(myArray[1], equals("e1"));
      expect(myArray[2], equals("e2"));
      expect(myArray[3], equals("e3"));
      expect(myArray[4], equals("e4"));
      // ["e0", "e1", "e2", "e3", "e4"]

      expect(myArray.removeAt(4), equals("e4"));
      expect(myArray.length, equals(4));
      expect(myArray[0], equals("e0"));
      expect(myArray[1], equals("e1"));
      expect(myArray[2], equals("e2"));
      expect(myArray[3], equals("e3"));
      // ["e0", "e1", "e2", "e3"]

      expect(myArray.removeLast(), equals("e3"));
      expect(myArray.length, equals(3));
      expect(myArray[0], equals("e0"));
      expect(myArray[1], equals("e1"));
      expect(myArray[2], equals("e2"));
      // ["e0", "e1", "e2"]

      final iterator = myArray.iterator();
      expect(iterator.next(), equals("e0"));
      expect(iterator.next(), equals("e1"));
      expect(iterator.next(), equals("e2"));

      myArray.clear();
      expect(myArray.length, equals(0));
      // []
    });
  });
}
