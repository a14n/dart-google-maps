import 'dart:html';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_geometry.dart';

Polyline poly;
Polyline geodesicPoly;
Marker marker1;
Marker marker2;

void main() {
  final mapOptions = new MapOptions()
    ..center = new LatLng(34, -40.605)
    ..zoom = 4;

  final map = new GMap(document.getElementById('map-canvas'), mapOptions);

  map.controls[ControlPosition.TOP_CENTER]
      .push(document.getElementById('info'));

  marker1 = new Marker(new MarkerOptions()
    ..map = map
    ..draggable = true
    ..position = new LatLng(40.71435280, -74.0059731));

  marker2 = new Marker(new MarkerOptions()
    ..map = map
    ..draggable = true
    ..position = new LatLng(48.8566140, 2.35222190));

  final bounds = new LatLngBounds(marker1.position, marker2.position);
  map.fitBounds(bounds);

  marker1.onPositionChanged.listen((_) => update());
  marker2.onPositionChanged.listen((_) => update());

  final polyOptions = new PolylineOptions()
    ..strokeColor = '#FF0000'
    ..strokeOpacity = 1.0
    ..strokeWeight = 3
    ..map = map;
  poly = new Polyline(polyOptions);

  final geodesicOptions = new PolylineOptions()
    ..strokeColor = '#CC0099'
    ..strokeOpacity = 1.0
    ..strokeWeight = 3
    ..geodesic = true
    ..map = map;
  geodesicPoly = new Polyline(geodesicOptions);

  update();
}

void update() {
  final path = [marker1.position, marker2.position];
  poly.path = path;
  geodesicPoly.path = path;
  final heading = spherical.computeHeading(path[0], path[1]);
  (document.getElementById('heading') as InputElement).value =
      heading.toString();
  (document.getElementById('origin') as InputElement).value =
      path[0].toString();
  (document.getElementById('destination') as InputElement).value =
      path[1].toString();
}
