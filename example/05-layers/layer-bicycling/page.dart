import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final myLatlng = new LatLng(42.3726399, -71.1096528);
  final mapOptions = new MapOptions()
    ..zoom = 14
    ..center = myLatlng;
  final map = new GMap(document.getElementById('map-canvas'), mapOptions);

  new BicyclingLayer()..map = map;
}
