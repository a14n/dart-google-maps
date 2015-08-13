import 'dart:html';
import 'dart:js' show context;

import 'package:google_maps/google_maps.dart';

void initialize() {
  final mapOptions = new MapOptions()
    ..zoom = 8
    ..center = new LatLng(-34.397, 150.644);
  new GMap(document.getElementById("map-canvas"), mapOptions);
}

void main() {
  context['initialize'] = initialize;

  final script = new ScriptElement()
    ..type = 'text/javascript'
    ..src =
    'https://maps.googleapis.com/maps/api/js?callback=initialize';
  document.body.children.add(script);
}
