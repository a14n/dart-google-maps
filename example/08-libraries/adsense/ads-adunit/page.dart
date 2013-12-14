import 'dart:html';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_adsense.dart';

void main() {
  final mapOptions = new MapOptions()
    ..center = new LatLng(36.5987, -121.8950)
    ..zoom = 12
    ..mapTypeId = MapTypeId.ROADMAP
    ;
  final map = new GMap(querySelector("#map_canvas"), mapOptions);

  final adUnitDiv = new DivElement();

  // Note: replace the publisher ID noted here with your own
  // publisher ID.
  final adUnitOptions = new AdUnitOptions()
    ..format = AdFormat.HALF_BANNER
    ..position = ControlPosition.TOP_CENTER
    ..publisherId = 'ca-google-maps_apidocs'
    ..map = map
    ..$unsafe['visible'] = true
    ;
  final adUnit = new AdUnit(adUnitDiv, adUnitOptions);
}