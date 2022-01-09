import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final fenway = LatLng(42.345573, -71.098326);

  // Note: constructed panorama objects have visible: true
  // set by default.
  final panoramaOptions = StreetViewPanoramaOptions()
    ..position = fenway
    ..addressControlOptions = (StreetViewAddressControlOptions()
      ..position = ControlPosition.BOTTOM_CENTER)
    ..linksControl = false
    ..panControl = false
    ..enableCloseButton = false;
  StreetViewPanorama(
      document.getElementById('map-canvas') as HtmlElement, panoramaOptions);
}
