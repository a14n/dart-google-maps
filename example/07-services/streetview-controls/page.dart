import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/google_maps.dart';

void main() {
  js.scoped(() {
    final fenway = new LatLng(42.345573,-71.098326);

    // Note: constructed panorama objects have visible: true
    // set by default.
    final panoramaOptions = new StreetViewPanoramaOptions()
      ..position = fenway
      ..addressControlOptions = (new StreetViewAddressControlOptions()
        ..position = ControlPosition.BOTTOM_CENTER
      )
      ..linksControl = false
      ..panControl = false
      ..zoomControlOptions = (new ZoomControlOptions()
        ..style = ZoomControlStyle.SMALL
      )
      ..enableCloseButton = false
      ;
    final panorama = new StreetViewPanorama(query('#pano'),panoramaOptions);
  });
}