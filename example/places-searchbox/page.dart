import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_places.dart';
import 'package:web/web.dart';

void main() {
  final markers = <Marker>[];
  final map = Map(document.getElementById('map-canvas') as HTMLElement,
      MapOptions()..mapTypeId = MapTypeId.ROADMAP);

  final defaultBounds =
      LatLngBounds(LatLng(-33.8902, 151.1759), LatLng(-33.8474, 151.2631));
  map.fitBounds(defaultBounds);

  // Create the search box and link it to the UI element.
  final input = document.getElementById('pac-input') as HTMLInputElement;
  map.getControlsAt(ControlPosition.TOP_LEFT).push(input);

  final searchBox = SearchBox(input);

  // Listen for the event fired when the user selects an item from the
  // pick list. Retrieve the matching places for that item.
  searchBox.onPlacesChanged.listen((_) {
    final places = searchBox.places!.toDart;

    if (places.isEmpty) {
      return;
    }
    for (final marker in markers) {
      marker.map = null;
    }

    // For each place, get the icon, place name, and location.
    markers.clear();
    final bounds = LatLngBounds.empty();
    for (final place in places) {
      final image = Icon()
        ..url = place.icon!
        ..size = Size(71, 71)
        ..origin = Point(0, 0)
        ..anchor = Point(17, 34)
        ..scaledSize = Size(25, 25);

      // Create a marker for each place.
      final marker = Marker(MarkerOptions()
        ..map = map
        ..icon = image
        ..title = place.name
        ..position = place.geometry!.location);

      markers.add(marker);

      bounds.extend(place.geometry!.location!);
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
