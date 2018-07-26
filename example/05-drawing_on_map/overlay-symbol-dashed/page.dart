import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = MapOptions()
    ..zoom = 6
    ..center = LatLng(20.291, 153.027)
    ..mapTypeId = MapTypeId.TERRAIN;
  final map = GMap(document.getElementById('map-canvas'), mapOptions);

  final lineSymbol = GSymbol()
    ..path = 'M 0,-1 0,1'
    ..strokeOpacity = 1
    ..scale = 4;

  final lineCoordinates = [LatLng(22.291, 153.027), LatLng(18.291, 153.027)];

  Polyline(PolylineOptions()
    ..path = lineCoordinates
    ..strokeOpacity = 0
    ..icons = [
      IconSequence()
        ..icon = lineSymbol
        ..offset = '0'
        ..repeat = '20px'
    ]
    ..map = map);
}
