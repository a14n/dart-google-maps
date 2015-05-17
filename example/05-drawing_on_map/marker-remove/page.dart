import 'dart:html';
import 'package:google_maps/google_maps.dart';

GMap map;
final markers = <Marker>[];

void main() {
  final haightAshbury = new LatLng(37.7699298, -122.4469157);
  final mapOptions = new MapOptions()
    ..zoom = 12
    ..center = haightAshbury
    ..mapTypeId = MapTypeId.TERRAIN;
  map = new GMap(document.getElementById('map-canvas'), mapOptions);

  // This event listener will call addMarker() when the map is clicked.
  map.onClick.listen((e) => addMarker(e.latLng));

  // Adds a marker at the center of the map.
  addMarker(haightAshbury);

  // bind buttons
  document.getElementById('clearMarkers').onClick.listen((_) => clearMarkers());
  document.getElementById('showMarkers').onClick.listen((_) => showMarkers());
  document.getElementById('deleteMarkers').onClick
      .listen((_) => deleteMarkers());
}

// Add a marker to the map and push to the array.
void addMarker(LatLng location) {
  var marker = new Marker(new MarkerOptions()
    ..position = location
    ..map = map);
  markers.add(marker);
}

// Sets the map on all markers in the array.
void setAllMap(GMap map) => markers.forEach((m) => m.map = map);

// Removes the markers from the map, but keeps them in the array.
void clearMarkers() => setAllMap(null);

// Shows any markers currently in the array.
void showMarkers() => setAllMap(map);

// Deletes all markers in the array by removing references to them.
void deleteMarkers() {
  clearMarkers();
  markers.clear();
}
