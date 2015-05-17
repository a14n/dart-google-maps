import 'dart:html' hide Animation;
import 'package:google_maps/google_maps.dart';

final LatLng stockholm = new LatLng(59.32522, 18.07002);
final LatLng parliament = new LatLng(59.327383, 18.06747);
Marker marker;
GMap map;

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 13
    ..center = stockholm;
  map = new GMap(document.getElementById('map-canvas'), mapOptions);

  marker = new Marker(new MarkerOptions()
    ..map = map
    ..draggable = true
    ..animation = Animation.DROP
    ..position = parliament);
  marker.onClick.listen((e) => toggleBounce());
}

void toggleBounce() {
  if (marker.animation != null) {
    marker.animation = null;
  } else {
    marker.animation = Animation.BOUNCE;
  }
}
