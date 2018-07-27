import 'dart:html' hide Point;

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_places.dart';

GMap map;
UListElement placesList;

void main() {
  final pyrmont = LatLng(-33.8665433, 151.1956316);

  map = GMap(
      document.getElementById('map-canvas'),
      MapOptions()
        ..center = pyrmont
        ..zoom = 17);

  final request = PlaceSearchRequest()
    ..location = pyrmont
    ..radius = 500
    ..types = ['store'];

  placesList = document.getElementById('places') as UListElement;

  PlacesService(map).nearbySearch(request, callback);
}

void callback(List<PlaceResult> results, PlacesServiceStatus status,
    PlaceSearchPagination pagination) {
  if (status != PlacesServiceStatus.OK) {
    return;
  } else {
    createMarkers(results);

    if (pagination.hasNextPage) {
      final moreButton = (document.getElementById('more') as ButtonElement)
        ..disabled = false;

      moreButton.onClick.listen((_) {
        moreButton.disabled = true;
        pagination.nextPage();
      });
    }
  }
}

void createMarkers(List<PlaceResult> places) {
  final bounds = LatLngBounds();

  for (final place in places) {
    final image = Icon()
      ..url = place.icon
      ..size = Size(71, 71)
      ..origin = Point(0, 0)
      ..anchor = Point(17, 34)
      ..scaledSize = Size(25, 25);

    Marker(MarkerOptions()
      ..map = map
      ..icon = image
      ..title = place.name
      ..position = place.geometry.location);

    placesList.innerHtml += '<li>${place.name}</li>';

    bounds.extend(place.geometry.location);
  }
  map.fitBounds(bounds);
}
