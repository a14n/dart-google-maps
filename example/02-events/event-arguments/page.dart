import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 4
    ..center = new LatLng(-25.363882,131.044922)
    ..mapTypeId = MapTypeId.ROADMAP
  ;
  final map = new GMap(query("#map_canvas"), mapOptions);

  map.onClick.listen((e) {
    placeMarker(e.latLng, map);
  });
}

void placeMarker(LatLng position, GMap map) {
  var marker = new Marker(new MarkerOptions()
    ..position = position
    ..map = map
  );

  map.panTo(position);
}
