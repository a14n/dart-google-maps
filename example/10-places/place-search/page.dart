import 'dart:html';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_places.dart';

GMap map;
InfoWindow infowindow;

void main() {
  final pyrmont = new LatLng(-33.8665433, 151.1956316);

  map = new GMap(document.getElementById('map-canvas'), new MapOptions()
    ..center = pyrmont
    ..zoom = 15);

  final request = new PlaceSearchRequest()
    ..location = pyrmont
    ..radius = 500
    ..types = ['store'];

  infowindow = new InfoWindow();
  final service = new PlacesService(map);
  service.nearbySearch(request, callback);
}

void callback(List<PlaceResult> results, PlacesServiceStatus status,
    PlaceSearchPagination pagination) {
  if (status == PlacesServiceStatus.OK) {
    for (var i = 0; i < results.length; i++) {
      createMarker(results[i]);
    }
  }
}

void createMarker(PlaceResult place) {
  final marker = new Marker(new MarkerOptions()
    ..map = map
    ..position = place.geometry.location);

  marker.onClick.listen((e) {
    infowindow.content = place.name;
    infowindow.open(map, marker);
  });
}
