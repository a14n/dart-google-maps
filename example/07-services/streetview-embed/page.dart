import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart';

void main() {
  js.scoped(() {
    final bryantPark = new LatLng(37.869260, -122.254811);
    final panoramaOptions = new StreetViewPanoramaOptions()
      ..position = bryantPark
      ..pov = (new StreetViewPov()
        ..heading = 165
        ..pitch = 0
        ..zoom = 1
      )
      ;
    final myPano = new StreetViewPanorama(query('#pano'),panoramaOptions);
    myPano.visible = true;
  });
}