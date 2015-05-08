import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = new MapOptions()
    ..center = new LatLng(36.964645, -122.01523)
    ..zoom = 18
    ..mapTypeId = MapTypeId.SATELLITE;
  final map = new GMap(document.getElementById('map-canvas'), mapOptions);
  map.tilt = 45;
}
