import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

void main() {
  final mapOptions = MapOptions()
    ..zoom = 4
    ..center = LatLng(-25.363882, 131.044922);
  final map =
      Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  Marker(MarkerOptions()
    ..position = map.center
    ..icon = (Symbol()
      ..path = SymbolPath.CIRCLE
      ..scale = 10)
    ..draggable = true
    ..map = map);
}
