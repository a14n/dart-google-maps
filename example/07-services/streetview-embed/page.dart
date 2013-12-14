import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final bryantPark = new LatLng(37.869260, -122.254811);
  final panoramaOptions = new StreetViewPanoramaOptions()
    ..position = bryantPark
    ..pov = (new StreetViewPov()
      ..heading = 165
      ..pitch = 0
      ..zoom = 1
    )
    ;
  final myPano = new StreetViewPanorama(querySelector('#pano'),panoramaOptions);
  myPano.visible = true;
}