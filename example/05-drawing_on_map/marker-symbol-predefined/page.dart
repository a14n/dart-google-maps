import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = MapOptions()
    ..zoom = 4
    ..center = LatLng(-25.363882, 131.044922);
  final map =
      GMap(document.getElementById('map-canvas') as HtmlElement, mapOptions);

  Marker(MarkerOptions()
    ..position = map.center
    ..icon = (GSymbol()
      ..path = SymbolPath.CIRCLE
      ..scale = 10)
    ..draggable = true
    ..map = map);
}
