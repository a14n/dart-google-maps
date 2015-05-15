import 'dart:html' hide MouseEvent;

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_geometry.dart';

Polyline poly;

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 14
    ..center = new LatLng(34.3664951, -89.5192484);

  final map = new GMap(document.getElementById('map-canvas'), mapOptions);

  final polyOptions = new PolylineOptions()
    ..strokeColor = '#000000'
    ..strokeOpacity = 1.0
    ..strokeWeight = 3
    ..map = map;
  poly = new Polyline(polyOptions);

  // Add a listener for the click event
  map.onClick.listen(addLatLng);
}

/**
 * Handles click events on a map, and adds a new point to the Polyline.
 * Updates the encoding text area with the path's encoded values.
 */
void addLatLng(MouseEvent e) {
  final path = poly.path;
  // Because path is an MVCArray, we can simply append a new coordinate
  // and it will automatically appear
  path.push(e.latLng);

  // Update the text field to display the polyline encodings
  final encodeString = encoding.encodePath(path);
  if (encodeString != null) {
    (document.getElementById('encoded-polyline') as TextAreaElement).value =
        encodeString;
  }
}
