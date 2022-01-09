import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final bryantPark = LatLng(37.869260, -122.254811);

  final panoramaOptions = StreetViewPanoramaOptions()
    ..position = bryantPark
    ..pov = (StreetViewPov()
      ..heading = 165
      ..pitch = 0)
    ..zoom = 1;

  StreetViewPanorama(
          document.getElementById('map-canvas') as HtmlElement, panoramaOptions)
      .visible = true;
}
