import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 4
    ..center = new LatLng(-33, 151)
    ..disableDefaultUI = true
  ;

  new GMap(document.getElementById('map-canvas'), mapOptions);
}
