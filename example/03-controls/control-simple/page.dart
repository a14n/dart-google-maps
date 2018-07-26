import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = MapOptions()
    ..zoom = 4
    ..center = LatLng(-33, 151)
    ..panControl = false
    ..zoomControl = false
    ..scaleControl = true;
  GMap(document.getElementById('map-canvas'), mapOptions);
}
