import 'dart:async';
import 'dart:html';
import 'package:google_maps/google_maps.dart';

GMap map;

void main() {
  final mapOptions = new MapOptions()
    ..center = new LatLng(45.518970, -122.672899)
    ..zoom = 18
    ..mapTypeId = MapTypeId.SATELLITE
    ..heading = 90
    ..tilt = 45;
  map = new GMap(document.getElementById('map-canvas'), mapOptions);
  map.tilt = 45;

  document.getElementById('autoRotate').onClick.listen(autoRotate);
}

void rotate90(_) {
  final headingMap = map.heading;
  final heading = headingMap != null ? headingMap : 0;
  map.heading = heading + 90;
}

void autoRotate(_) {
  // Determine if we're showing aerial imagery
  if (map.tilt != 0) {
    new Timer.periodic(new Duration(seconds: 3), rotate90);
  }
}
