import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = MapOptions()
    ..zoom = 3
    ..center = LatLng(0, -180)
    ..mapTypeId = MapTypeId.TERRAIN;
  final map = GMap(document.getElementById('map-canvas'), mapOptions);

  final flightPlanCoordinates = <LatLng>[
    LatLng(37.772323, -122.214897),
    LatLng(21.291982, -157.821856),
    LatLng(-18.142599, 178.431),
    LatLng(-27.46758, 153.027892)
  ];
  Polyline(PolylineOptions()
        ..path = flightPlanCoordinates
        ..geodesic = true
        ..strokeColor = '#FF0000'
        ..strokeOpacity = 1.0
        ..strokeWeight = 2)
      .map = map;
}
