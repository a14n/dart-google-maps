import 'dart:async';
import 'package:google_maps/google_maps.dart';
import 'package:web/helpers.dart';

late GMap map;

void main() {
  final mapOptions = MapOptions()
    ..center = LatLng(45.518970, -122.672899)
    ..zoom = 18
    ..mapTypeId = MapTypeId.SATELLITE
    ..heading = 90
    ..tilt = 45;
  map = GMap(document.getElementById('map-canvas') as HTMLElement, mapOptions)
    ..tilt = 45;

  document.getElementById('autoRotate')!.onClick.listen(autoRotate);
}

void rotate90(_) {
  final headingMap = map.heading;
  final heading = headingMap != null ? headingMap : 0;
  map.heading = heading + 90;
}

void autoRotate(_) {
  // Determine if we're showing aerial imagery
  if (map.tilt != 0) {
    Timer.periodic(const Duration(seconds: 3), rotate90);
  }
}
