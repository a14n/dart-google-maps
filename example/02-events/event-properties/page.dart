import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final myLatLng = LatLng(-25.363882, 131.044922);
  final mapOptions = MapOptions()
    ..zoom = 4
    ..center = myLatLng;

  final map = GMap(document.getElementById('map-canvas'), mapOptions);

  final infowindow = InfoWindow(InfoWindowOptions()
    ..content = 'Change the zoom level'
    ..position = myLatLng)
    ..open(map);

  map.onZoomChanged.listen((_) {
    final zoomLevel = map.zoom;
    map.center = myLatLng;
    infowindow.content = 'Zoom: $zoomLevel';
  });
}
