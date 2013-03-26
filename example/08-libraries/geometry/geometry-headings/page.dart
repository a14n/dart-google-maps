import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_geometry.dart';

Polyline poly;
Polyline geodesicPoly;
Marker marker1;
Marker marker2;

void main() {
  js.scoped(() {
    final mapOptions = new MapOptions()
      ..center = new LatLng(34, -40.605)
      ..zoom = 4
      ..mapTypeId = MapTypeId.ROADMAP
      ;

    final map = new GMap(query("#map_canvas"), mapOptions);

    // TODO ControlPosition.TOP does not exists
    map.controls.getNodes(ControlPosition.TOP_CENTER).push(query('#info'));


    marker1 = js.retain(new Marker(new MarkerOptions()
      ..map = map
      ..draggable = true
      ..position = new LatLng(40.71435280, -74.0059731)
    ));

    marker2 = js.retain(new Marker(new MarkerOptions()
      ..map = map
      ..draggable = true
      ..position = new LatLng(48.8566140, 2.35222190)
    ));

    final bounds = new LatLngBounds(marker1.position, marker2.position);
    map.fitBounds(bounds);

    marker1.on.positionChanged.add(() => update());
    marker2.on.positionChanged.add(() => update());

    final polyOptions = new PolylineOptions()
      ..strokeColor = '#FF0000'
      ..strokeOpacity = 1.0
      ..strokeWeight = 3
      ..map = map
      ;
    poly = js.retain(new Polyline(polyOptions));

    final geodesicOptions = new PolylineOptions()
      ..strokeColor = '#CC0099'
      ..strokeOpacity = 1.0
      .. strokeWeight = 3
      ..geodesic = true
      ..map = map
      ;
    geodesicPoly = js.retain(new Polyline(geodesicOptions));

    update();
  });
}

void update() {
  final path = [marker1.position, marker2.position];
  poly.path = path;
  geodesicPoly.path = path;
  final heading = spherical.computeHeading(path[0], path[1]);
  (query('#heading') as InputElement).value = heading.toString();
  (query('#origin') as InputElement).value = path[0].toString();
  (query('#destination') as InputElement).value = path[1].toString();
}