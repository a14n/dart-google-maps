import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  var myLatLng = new LatLng(-25.363882, 131.044922);
  final mapOptions = new MapOptions()
    ..zoom = 4
    ..center = myLatLng;

  final map = new GMap(document.getElementById('map-canvas'), mapOptions);

  final infowindow = new InfoWindow(new InfoWindowOptions()
    ..content = "Change the zoom level"
    ..position = myLatLng);
  infowindow.open(map);

  map.onZoomChanged.listen((_) {
    var zoomLevel = map.zoom;
    map.center = myLatLng;
    infowindow.content = "Zoom: $zoomLevel";
  });
}
