import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

void main() {
  final coachella = LatLng(33.6803003, -116.173894);
  final mapOptions = MapOptions()
    ..zoom = 11
    ..center = coachella
    ..mapTypeId = MapTypeId.TERRAIN;
  final map =
      GMap(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  final rectangle = Rectangle();

  map.onZoomChanged.listen((_) {
    final rectOptions = RectangleOptions()
      ..strokeColor = '#FF0000'
      ..strokeOpacity = 0.8
      ..strokeWeight = 2
      ..fillColor = '#FF0000'
      ..fillOpacity = 0.35
      ..map = map
      ..bounds = map.bounds;
    rectangle.options = rectOptions;
  });
}
