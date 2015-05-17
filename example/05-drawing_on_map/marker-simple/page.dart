import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final myLatlng = new LatLng(-25.363882, 131.044922);
  final mapOptions = new MapOptions()
    ..zoom = 4
    ..center = myLatlng;
  final map = new GMap(document.getElementById('map-canvas'), mapOptions);

  new Marker(new MarkerOptions()
    ..position = myLatlng
    ..map = map
    ..title = "Hello World!");
}
