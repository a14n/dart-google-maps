import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final myLatLng = LatLng(20.291, 153.027);
  final mapOptions = MapOptions()
    ..zoom = 6
    ..center = myLatLng
    ..mapTypeId = MapTypeId.TERRAIN;

  final map =
      GMap(document.getElementById('map-canvas') as HtmlElement, mapOptions);

  final symbolOne = GSymbol()
    ..path = 'M -2,0 0,-2 2,0 0,2 z'
    ..strokeColor = '#F00'
    ..fillColor = '#F00'
    ..fillOpacity = 1;

  final symbolTwo = GSymbol()
    ..path =
        'M -1,0 A 1,1 0 0 0 -3,0 1,1 0 0 0 -1,0M 1,0 A 1,1 0 0 0 3,0 1,1 0 0 0 1,0M -3,3 Q 0,5 3,3'
    ..strokeColor = '#00F'
    ..rotation = 45;

  final symbolThree = GSymbol()
    ..path = 'M -2,-2 2,2 M 2,-2 -2,2'
    ..strokeColor = '#292'
    ..strokeWeight = 4;

  final lineCoordinates = [LatLng(22.291, 153.027), LatLng(18.291, 153.027)];

  Polyline(PolylineOptions()
    ..path = lineCoordinates
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
