import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final originalMapCenter = LatLng(-25.363882, 131.044922);
  final map = GMap(
    document.getElementById('map'),
    MapOptions()
      ..zoom = 4
      ..center = originalMapCenter,
  );

  final infowindow = InfoWindow(InfoWindowOptions()
    ..content = 'Change the zoom level'
    ..position = originalMapCenter)
    ..open(map);

  map.onZoomChanged.listen((_) {
    infowindow.content = 'Zoom: ${map.zoom}';
  });
}
