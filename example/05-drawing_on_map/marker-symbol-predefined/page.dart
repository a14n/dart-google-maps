import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 4
    ..center = new LatLng(-25.363882, 131.044922);
  final map = new GMap(document.getElementById('map-canvas'), mapOptions);

  new Marker(new MarkerOptions()
    ..position = map.center
    ..icon = (new GSymbol()
      ..path = SymbolPath.CIRCLE
      ..scale = 10)
    ..draggable = true
    ..map = map);
}
