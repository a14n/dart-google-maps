import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

late Polyline poly;
late Map map;

void main() {
  final mapOptions = MapOptions()
    ..zoom = 7
    // Center the map on Chicago, USA.
    ..center = LatLng(41.879535, -87.624333);
  map = Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  final polyOptions = PolylineOptions()
    ..strokeColor = '#000000'
    ..strokeOpacity = 1.0
    ..strokeWeight = 3;
  poly = Polyline(polyOptions)..map = map;

  // Add a listener for the click event
  map.onClick.listen(addLatLng);
}

/// Handles click events on a map, and adds a new point to the Polyline.
/// @param {MouseEvent} mouseEvent
void addLatLng(MapMouseEventOrIconMouseEvent e) {
  final path = poly.path
    // Because path is an MVCArray, we can simply append a new coordinate
    // and it will automatically appear
    ..push(e.latLng as LatLng);

  // Add a new marker at the new plotted point on the polyline.
  Marker(MarkerOptions()
    ..position = e.latLng
    ..title = '#${path.length}'
    ..map = map);
}
