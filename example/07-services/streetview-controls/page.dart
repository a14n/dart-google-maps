import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final fenway = new LatLng(42.345573, -71.098326);

  // Note: constructed panorama objects have visible: true
  // set by default.
  final panoramaOptions = new StreetViewPanoramaOptions()
    ..position = fenway
    ..addressControlOptions = (new StreetViewAddressControlOptions()
      ..position = ControlPosition.BOTTOM_CENTER)
    ..linksControl = false
    ..panControl = false
    ..zoomControlOptions = (new ZoomControlOptions()
      ..style = ZoomControlStyle.SMALL)
    ..enableCloseButton = false;
  new StreetViewPanorama(
      document.getElementById('map-canvas'), panoramaOptions);
}
