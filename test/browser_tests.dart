library tests;

import 'dart:html';
import 'dart:json';
import 'package:unittest/unittest.dart';
import 'package:unittest/html_config.dart';

import 'package:js/js.dart' as js;
import 'package:google_maps/google_maps.dart';

injectSource(code) {
  final script = new ScriptElement();
  script.type = 'text/javascript';
  script.innerHtml = code;
  document.body.nodes.add(script);
}

main() {
  useHtmlConfiguration();

  test('LatLng.toString call js', () {
    js.scoped(() {
      final latLng = new LatLng(2, 8);
      expect(latLng.toString(), equals("(2, 8)"));
    });
  });

  test('LatLng.equals call js', () {
    js.scoped(() {
      final latLng1 = new LatLng(2, 8);
      final latLng2 = new LatLng(2, 8);
      final latLng3 = new LatLng(2, 9);
      expect(latLng1.equals(latLng2), isTrue);
      expect(latLng1.equals(latLng3), isFalse);
    });
  });

  test('MVCArray works', () {
    js.scoped(() {
      final mvcArray = new MVCArray();
      mvcArray.on.insertAt.add((num i) => print("inserted at $i"));
      mvcArray.on.removeAt.add((num i, e) => print("removed $e at $i"));
      mvcArray.on.setAt.add((num i, e) => print("set $e at $i"));
      mvcArray.push("aa");
      expect(mvcArray.length, equals(1));
      mvcArray.setAt(0, "bb");
      expect(mvcArray.length, equals(1));
      mvcArray.removeAt(0);
      expect(mvcArray.length, equals(0));
    });
  });
}
