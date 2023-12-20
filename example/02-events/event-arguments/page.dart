import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

void main() {
  final map = GMap(
    document.getElementById('map') as HTMLElement,
    MapOptions()
      ..zoom = 4
      ..center = LatLng(-25.363882, 131.044922),
  );
  map.onClick.listen((e) {
    placeMarkerAndPanTo(e.latLng!, map);
  });
}

void placeMarkerAndPanTo(LatLng position, GMap map) {
  Marker(MarkerOptions()
    ..position = position
    ..map = map);

  map.panTo(position);
}
