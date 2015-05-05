import 'dart:html';
import 'package:google_maps/google_maps.dart';

GroundOverlay historicalOverlay;
GMap map;

main() {
  final newark = new LatLng(40.740, -74.18);
  final imageBounds = new LatLngBounds(
      new LatLng(40.712216, -74.22655), new LatLng(40.773941, -74.12544));

  final mapOptions = new MapOptions()
    ..zoom = 13
    ..center = newark;

  map = new GMap(document.getElementById('map-canvas'), mapOptions);

  historicalOverlay = new GroundOverlay(
      'https://www.lib.utexas.edu/maps/historical/newark_nj_1922.jpg',
      imageBounds);

  addOverlay();

  document.getElementById('removeOverlay').onClick
      .listen((_) => removeOverlay());
  document.getElementById('addOverlay').onClick.listen((_) => addOverlay());
}

void addOverlay() {
  historicalOverlay.map = map;
}

void removeOverlay() => historicalOverlay.map = null;
