import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final myLatlng = LatLng(34.04924594193164, -118.24104309082031);
  final mapOptions = MapOptions()
    ..zoom = 13
    ..center = myLatlng;
  final map = GMap(document.getElementById('map-canvas'), mapOptions);

  TrafficLayer().map = map;
}
