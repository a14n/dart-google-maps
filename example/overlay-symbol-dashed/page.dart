import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

void main() {
  final mapOptions = MapOptions()
    ..zoom = 6
    ..center = LatLng(20.291, 153.027)
    ..mapTypeId = MapTypeId.TERRAIN;
  final map =
      Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  final lineSymbol = Symbol()
    ..path = 'M 0,-1 0,1'.toJS
    ..strokeOpacity = 1
    ..scale = 4;

  final lineCoordinates = [LatLng(22.291, 153.027), LatLng(18.291, 153.027)];

  Polyline(PolylineOptions()
    ..path = lineCoordinates.toJS
    ..strokeOpacity = 0
    ..icons = [
      IconSequence()
        ..icon = lineSymbol
        ..offset = '0'
        ..repeat = '20px'
    ]
    ..map = map);
}
