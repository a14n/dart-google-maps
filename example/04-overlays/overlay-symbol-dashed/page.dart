import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 6
    ..center = new LatLng(20.291, 153.027)
    ..mapTypeId = MapTypeId.TERRAIN;
  final map = new GMap(document.getElementById('map-canvas'), mapOptions);

  final lineSymbol = new GSymbol()
    ..path = 'M 0,-1 0,1'
    ..strokeOpacity = 1
    ..scale = 4;

  final lineCoordinates = [
    new LatLng(22.291, 153.027),
    new LatLng(18.291, 153.027)
  ];

  new Polyline(new PolylineOptions()
    ..path = lineCoordinates
    ..strokeOpacity = 0
    ..icons = [
      new IconSequence()
        ..icon = lineSymbol
        ..offset = '0'
        ..repeat = '20px'
    ]
    ..map = map);
}
