import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final fenway = new LatLng(42.345573, -71.098326);
  final mapOptions = new MapOptions()
    ..center = fenway
    ..zoom = 14;
  final map = new GMap(document.getElementById('map-canvas'), mapOptions);
  final panoramaOptions = new StreetViewPanoramaOptions()
    ..position = fenway
    ..pov = (new StreetViewPov()
      ..heading = 34
      ..pitch = 10);
  final panorama =
      new StreetViewPanorama(document.getElementById('pano'), panoramaOptions);
  map.streetView = panorama;
}
