import 'dart:html';

import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = MapOptions()
    ..zoom = 8
    ..center = LatLng(-34.397, 150.644);
  GMap(document.getElementById("map-canvas"), mapOptions);
}
