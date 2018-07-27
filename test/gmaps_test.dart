@TestOn('browser')

import 'dart:html';

import 'package:google_maps/google_maps.dart';
import 'package:test/test.dart';

void injectSource(String code) {
  final script = ScriptElement()
    ..type = 'text/javascript'
    ..innerHtml = code;
  document.body.nodes.add(script);
}

void main() {
  test('LatLng.toString call js', () {
    final latLng = LatLng(2, 8);
    expect(latLng.toString(), equals('(2, 8)'));
  });

  test('LatLng.equals call js', () {
    final latLng1 = LatLng(2, 8);
    final latLng2 = LatLng(2, 8);
    final latLng3 = LatLng(2, 9);
    expect(latLng1.equals(latLng2), isTrue);
    expect(latLng1.equals(latLng3), isFalse);
  });

  test('MVCArray works', () {
    final mvcArray = MVCArray();
    mvcArray.onInsertAt.listen((i) => print('inserted at $i'));
    mvcArray.onRemoveAt
        .listen((e) => print('removed ${e.element} at ${e.index}'));
    mvcArray.onSetAt.listen((e) => print('set ${e.element} at ${e.index}'));
    mvcArray.push('aa');
    expect(mvcArray.length, equals(1));
    mvcArray.setAt(0, 'bb');
    expect(mvcArray.length, equals(1));
    mvcArray.removeAt(0);
    expect(mvcArray.length, equals(0));
  });
}
