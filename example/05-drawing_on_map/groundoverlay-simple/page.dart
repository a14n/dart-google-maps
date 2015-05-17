import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final newark = new LatLng(40.740, -74.18);
  final imageBounds = new LatLngBounds(
      new LatLng(40.712216, -74.22655), new LatLng(40.773941, -74.12544));

  final mapOptions = new MapOptions()
    ..zoom = 13
    ..center = newark;
  final map = new GMap(document.getElementById('map-canvas'), mapOptions);

  final historicalOverlay = new GroundOverlay(
      'https://www.lib.utexas.edu/maps/historical/newark_nj_1922.jpg',
      imageBounds);
  historicalOverlay.map = map;
}
