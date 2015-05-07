import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final myLatlng = new LatLng(51.501904, -0.115871);
  final mapOptions = new MapOptions()
    ..zoom = 13
    ..center = myLatlng;
  final map = new GMap(document.getElementById('map-canvas'), mapOptions);

  new TransitLayer()..map = map;
}
