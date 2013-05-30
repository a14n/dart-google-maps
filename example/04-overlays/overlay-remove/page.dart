import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/google_maps.dart';

GMap map;
List<Marker> markers;

void main() {
  markers = new List<Marker>();

  final haightAshbury = new LatLng(37.7699298, -122.4469157);
  final mapOptions = new MapOptions()
    ..zoom = 12
    ..center = haightAshbury
    ..mapTypeId = MapTypeId.TERRAIN
    ;
  map = js.retain(new GMap(query("#map-canvas"), mapOptions));

  map.onClick.listen((e) {
    addMarker(e.latLng);
  });

  query("#clearOverlays").onClick.listen((e) => clearOverlays());
  query("#showOverlays").onClick.listen((e) => showOverlays());
  query("#deleteOverlays").onClick.listen((e) => deleteOverlays());
}

// Add a marker to the map and push to the array.
void addMarker(LatLng location) {
  final marker = new Marker(new MarkerOptions()
    ..position = location
    ..map = map
  );
  js.retain(marker);
  markers.add(marker);
}

// Sets the map on all markers in the array.
void setAllMap(GMap map) {
  for (final marker in markers) {
    marker.map = map;
  }
}

// Removes the overlays from the map, but keeps them in the array.
void clearOverlays() {
  setAllMap(null);
}

// Shows any overlays currently in the array.
void showOverlays() {
  setAllMap(map);
}

// Deletes all markers in the array by removing references to them.
void deleteOverlays() {
  clearOverlays();
  markers.forEach(js.release);
  markers.clear();
}
