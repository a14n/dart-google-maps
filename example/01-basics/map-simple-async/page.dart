@JS()
library example;

import 'dart:html' hide window;

import 'package:google_maps/google_maps.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

void initialize() {
  GMap(
    document.getElementById('map'),
    MapOptions()
      ..center = LatLng(-34.397, 150.644)
      ..zoom = 8,
  );
}

void main() {
  setProperty(window, 'init', initialize);

  final script = ScriptElement()
    ..type = 'text/javascript'
    ..src = 'https://maps.googleapis.com/maps/api/js?callback=init';
  document.body.children.add(script);
}

@JS()
external Object get window;
