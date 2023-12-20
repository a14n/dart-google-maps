import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_geometry.dart';
import 'package:web/web.dart';

late Polyline poly;

void main() {
  final mapOptions = MapOptions()
    ..zoom = 14
    ..center = LatLng(34.3664951, -89.5192484);

  final map =
      GMap(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  final polyOptions = PolylineOptions()
    ..strokeColor = '#000000'
    ..strokeOpacity = 1.0
    ..strokeWeight = 3
    ..map = map;
  poly = Polyline(polyOptions);

  // Add a listener for the click event
  map.onClick.listen(addLatLng);
}

/// Handles click events on a map, and adds a new point to the Polyline.
/// Updates the encoding text area with the path's encoded values.
void addLatLng(MapMouseEvent e) {
  final path = poly.path!
    // Because path is an MVCArray, we can simply append a new coordinate
    // and it will automatically appear
    ..push(e.latLng);

  // Update the text field to display the polyline encodings
  final encodeString = Encoding.encodePath(path);
  (document.getElementById('encoded-polyline') as HTMLTextAreaElement).value =
      encodeString;
}
