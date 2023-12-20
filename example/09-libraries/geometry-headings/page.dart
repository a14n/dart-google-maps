import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_geometry.dart';
import 'package:web/web.dart';

late Polyline poly;
late Polyline geodesicPoly;
late Marker marker1;
late Marker marker2;

void main() {
  final mapOptions = MapOptions()
    ..center = LatLng(34, -40.605)
    ..zoom = 4;

  final map =
      GMap(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  map.controls![ControlPosition.TOP_CENTER as int]!
      .push(document.getElementById('panel') as HTMLElement);

  marker1 = Marker(MarkerOptions()
    ..map = map
    ..draggable = true
    ..position = LatLng(40.71435280, -74.0059731));

  marker2 = Marker(MarkerOptions()
    ..map = map
    ..draggable = true
    ..position = LatLng(48.8566140, 2.35222190));

  final bounds = LatLngBounds(marker1.position, marker2.position);
  map.fitBounds(bounds);

  marker1.onPositionChanged.listen((_) => update());
  marker2.onPositionChanged.listen((_) => update());

  final polyOptions = PolylineOptions()
    ..strokeColor = '#FF0000'
    ..strokeOpacity = 1.0
    ..strokeWeight = 3
    ..map = map;
  poly = Polyline(polyOptions);

  final geodesicOptions = PolylineOptions()
    ..strokeColor = '#CC0099'
    ..strokeOpacity = 1.0
    ..strokeWeight = 3
    ..geodesic = true
    ..map = map;
  geodesicPoly = Polyline(geodesicOptions);

  update();
}

void update() {
  final path = [marker1.position, marker2.position];
  poly.path = path;
  geodesicPoly.path = path;
  final heading = Spherical.computeHeading(path[0], path[1]);
  (document.getElementById('heading') as HTMLInputElement).value =
      heading.toString();
  (document.getElementById('origin') as HTMLInputElement).value =
      path[0].toString();
  (document.getElementById('destination') as HTMLInputElement).value =
      path[1].toString();
}
