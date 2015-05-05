import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 3
    ..center = new LatLng(0, -180)
    ..mapTypeId = MapTypeId.TERRAIN
    ;
  final map = new GMap(document.getElementById('map-canvas'), mapOptions);

  var flightPlanCoordinates = <LatLng>[
    new LatLng(37.772323, -122.214897),
    new LatLng(21.291982, -157.821856),
    new LatLng(-18.142599, 178.431),
    new LatLng(-27.46758, 153.027892)
  ];
  var flightPath = new Polyline(new PolylineOptions()
    ..path = flightPlanCoordinates
    ..geodesic = true
    ..strokeColor = '#FF0000'
    ..strokeOpacity = 1.0
    ..strokeWeight = 2
  );

  flightPath.map = map;
}