import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final newark = LatLng(40.740, -74.18);
  final imageBounds =
      LatLngBounds(LatLng(40.712216, -74.22655), LatLng(40.773941, -74.12544));

  final mapOptions = MapOptions()
    ..zoom = 13
    ..center = newark;
  final map = GMap(document.getElementById('map-canvas'), mapOptions);

  final historicalOverlay = GroundOverlay(
      'https://www.lib.utexas.edu/maps/historical/newark_nj_1922.jpg',
      imageBounds);
  historicalOverlay.map = map;
}
