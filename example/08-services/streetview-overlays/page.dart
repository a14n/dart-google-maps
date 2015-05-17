import 'dart:html';

import 'package:google_maps/google_maps.dart';

GMap map;
StreetViewPanorama panorama;
final astorPlace = new LatLng(40.729884, -73.990988);
final busStop = new LatLng(40.729559678851025, -73.99074196815491);
final cafe = new LatLng(40.730031233910694, -73.99142861366272);
final bank = new LatLng(40.72968163306612, -73.9911389350891);

void main() {
  // Set up the map
  final mapOptions = new MapOptions()
    ..center = astorPlace
    ..zoom = 18
    ..streetViewControl = false;
  map = new GMap(document.getElementById('map-canvas'), mapOptions);

  // Setup the markers on the map
  new Marker(new MarkerOptions()
    ..position = cafe
    ..map = map
    ..icon =
    'http://chart.apis.google.com/chart?chst=d_map_pin_icon&chld=cafe|FFFF00'
    ..title = 'Cafe');

  new Marker(new MarkerOptions()
    ..position = bank
    ..map = map
    ..icon =
    'http://chart.apis.google.com/chart?chst=d_map_pin_icon&chld=dollar|FFFF00'
    ..title = 'Bank');

  new Marker(new MarkerOptions()
    ..position = busStop
    ..map = map
    ..icon =
    'http://chart.apis.google.com/chart?chst=d_map_pin_icon&chld=bus|FFFF00'
    ..title = 'Bus Stop');

  // We get the map's default panorama and set up some defaults.
  // Note that we don't yet set it visible.
  panorama = map.streetView;
  panorama.position = astorPlace;
  panorama.pov = new StreetViewPov()
    ..heading = 265
    ..pitch = 0;

  querySelector("#toggleStreetView").onClick.listen((e) => toggleStreetView());
}

void toggleStreetView() {
  var toggle = panorama.visible;
  if (toggle == false) {
    panorama.visible = true;
  } else {
    panorama.visible = false;
  }
}
