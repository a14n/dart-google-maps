import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = MapOptions()
    ..zoom = 4
    ..center = LatLng(-25.363882, 131.044922);
  final map = GMap(document.getElementById('map-canvas'), mapOptions);

  map.onClick.listen((e) {
    placeMarker(e.latLng, map);
  });
}

void placeMarker(LatLng position, GMap map) {
  Marker(MarkerOptions()
    ..position = position
    ..map = map);

  map.panTo(position);
}
