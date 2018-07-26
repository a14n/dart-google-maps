import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final myLatlng = LatLng(51.501904, -0.115871);
  final mapOptions = MapOptions()
    ..zoom = 13
    ..center = myLatlng;
  final map = GMap(document.getElementById('map-canvas'), mapOptions);

  TransitLayer()..map = map;
}
