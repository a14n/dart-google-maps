import 'dart:html';

import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 8
    ..center = new LatLng(-34.397, 150.644);
  new GMap(document.getElementById("map-canvas"), mapOptions);
}
