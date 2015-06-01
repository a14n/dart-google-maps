import 'dart:html';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_adsense.dart';
import 'package:js_wrapping/js_wrapping.dart';

void main() {
  final mapOptions = new MapOptions()
    ..center = new LatLng(36.5987, -121.8950)
    ..zoom = 12;
  final map = new GMap(document.getElementById('map-canvas'), mapOptions);

  final adUnitDiv = new DivElement();

  // Note: replace the publisher ID noted here with your own
  // publisher ID.
  final adUnitOptions = new AdUnitOptions()
    ..format = AdFormat.HALF_BANNER
    ..position = ControlPosition.TOP_CENTER
    ..publisherId = 'ca-google-maps_apidocs'
    ..map = map;
  asJsObject(adUnitOptions)['visible'] = true;
  new AdUnit(adUnitDiv, adUnitOptions);
}
