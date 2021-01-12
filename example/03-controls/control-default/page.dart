import 'dart:html';

import 'package:google_maps/google_maps.dart';

void main() {
  GMap(
    document.getElementById('map'),
    MapOptions()
      ..center = LatLng(-34.397, 150.644)
      ..zoom = 8,
  );
}
