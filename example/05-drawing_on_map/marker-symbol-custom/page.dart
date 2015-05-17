import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 4
    ..center = new LatLng(-25.363882, 131.044922);
  final map = new GMap(document.getElementById('map-canvas'), mapOptions);

  final goldStar = new GSymbol()
    ..path =
    'M 125,5 155,90 245,90 175,145 200,230 125,180 50,230 75,145 5,90 95,90 z'
    ..fillColor = 'yellow'
    ..fillOpacity = 0.8
    ..scale = 1
    ..strokeColor = 'gold'
    ..strokeWeight = 14;

  new Marker(new MarkerOptions()
    ..position = map.center
    ..icon = goldStar
    ..map = map);
}
