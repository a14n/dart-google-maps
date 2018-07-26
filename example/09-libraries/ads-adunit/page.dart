import 'dart:html';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_adsense.dart';
import 'package:js_wrapping/js_wrapping.dart';

void main() {
  final mapOptions = MapOptions()
    ..center = LatLng(36.5987, -121.8950)
    ..zoom = 12;
  final map = GMap(document.getElementById('map-canvas'), mapOptions);

  final adUnitDiv = DivElement();

  // Note: replace the publisher ID noted here with your own
  // publisher ID.
  final adUnitOptions = AdUnitOptions()
    ..format = AdFormat.HALF_BANNER
    ..position = ControlPosition.TOP_CENTER
    ..publisherId = 'ca-google-maps_apidocs'
    ..map = map;
  asJsObject(adUnitOptions)['visible'] = true;
  AdUnit(adUnitDiv, adUnitOptions);
}
