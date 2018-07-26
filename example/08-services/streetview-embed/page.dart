import 'dart:html';
import 'package:google_maps/google_maps.dart';
import 'package:js_wrapping/js_wrapping.dart';

void main() {
  final bryantPark = LatLng(37.869260, -122.254811);

  final panoramaOptions = StreetViewPanoramaOptions()
    ..position = bryantPark
    ..pov = (StreetViewPov()
      ..heading = 165
      ..pitch = 0);
  //TODO(aa) https://code.google.com/p/gmaps-api-issues/issues/detail?id=8047
  asJsObject(panoramaOptions)['zoom'] = 1;

  StreetViewPanorama(document.getElementById('map-canvas'), panoramaOptions)
    ..visible = true;
}
