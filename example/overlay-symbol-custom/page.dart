import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

void main() {
  final myLatLng = LatLng(20.291, 153.027);
  final mapOptions = MapOptions()
    ..zoom = 6
    ..center = myLatLng
    ..mapTypeId = MapTypeId.TERRAIN;

  final map =
      Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  final symbolOne = Symbol()
    ..path = 'M -2,0 0,-2 2,0 0,2 z'.toJS
    ..strokeColor = '#F00'
    ..fillColor = '#F00'
    ..fillOpacity = 1;

  final symbolTwo = Symbol()
    ..path =
        'M -1,0 A 1,1 0 0 0 -3,0 1,1 0 0 0 -1,0M 1,0 A 1,1 0 0 0 3,0 1,1 0 0 0 1,0M -3,3 Q 0,5 3,3'
            .toJS
    ..strokeColor = '#00F'
    ..rotation = 45;

  final symbolThree = Symbol()
    ..path = 'M -2,-2 2,2 M 2,-2 -2,2'.toJS
    ..strokeColor = '#292'
    ..strokeWeight = 4;

  final lineCoordinates = [LatLng(22.291, 153.027), LatLng(18.291, 153.027)];

  Polyline(PolylineOptions()
    ..path = lineCoordinates.toJS
    ..icons = [
      IconSequence()
        ..icon = symbolOne
        ..offset = '0%',
      IconSequence()
        ..icon = symbolTwo
        ..offset = '50%',
      IconSequence()
        ..icon = symbolThree
        ..offset = '100%',
    ]
    ..map = map);
}
