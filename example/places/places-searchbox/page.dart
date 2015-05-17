import 'dart:html' hide Point;

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_places.dart';

void main() {
  final markers = <Marker>[];
  final map = new GMap(document.getElementById('map-canvas'), new MapOptions()
    ..mapTypeId = MapTypeId.ROADMAP);

  final defaultBounds = new LatLngBounds(
      new LatLng(-33.8902, 151.1759), new LatLng(-33.8474, 151.2631));
  map.fitBounds(defaultBounds);

  // Create the search box and link it to the UI element.
  final InputElement input = document.getElementById('pac-input');
  map.controls[ControlPosition.TOP_LEFT].push(input);

  final searchBox = new SearchBox(input);

  // Listen for the event fired when the user selects an item from the
  // pick list. Retrieve the matching places for that item.
  searchBox.onPlacesChanged.listen((_) {
    final places = searchBox.places;

    if (places.isEmpty) {
      return;
    }
    for (final marker in markers) {
      marker.map = null;
    }

    // For each place, get the icon, place name, and location.
    markers.clear();
    final bounds = new LatLngBounds();
    for (final place in places) {
      final image = new Icon()
        ..url = place.icon
        ..size = new Size(71, 71)
        ..origin = new Point(0, 0)
        ..anchor = new Point(17, 34)
        ..scaledSize = new Size(25, 25);

      // Create a marker for each place.
      final marker = new Marker(new MarkerOptions()
        ..map = map
        ..icon = image
        ..title = place.name
        ..position = place.geometry.location);

      markers.add(marker);

      bounds.extend(place.geometry.location);
    }

    map.fitBounds(bounds);
  });

  // Bias the SearchBox results towards places that are within the bounds of the
  // current map's viewport.
  map.onBoundsChanged.listen((_) {
    final bounds = map.bounds;
    searchBox.bounds = bounds;
  });
}
