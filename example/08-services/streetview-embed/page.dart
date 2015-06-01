import 'dart:html';
import 'package:google_maps/google_maps.dart';
import 'package:js_wrapping/js_wrapping.dart';

void main() {
  final bryantPark = new LatLng(37.869260, -122.254811);

  final panoramaOptions = new StreetViewPanoramaOptions()
    ..position = bryantPark
    ..pov = (new StreetViewPov()
      ..heading = 165
      ..pitch = 0);
  //TODO(aa) https://code.google.com/p/gmaps-api-issues/issues/detail?id=8047
  asJsObject(panoramaOptions)['zoom'] = 1;

  new StreetViewPanorama(document.getElementById('map-canvas'), panoramaOptions)
    ..visible = true;
}
