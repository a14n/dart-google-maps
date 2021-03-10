import 'dart:html';
import 'package:google_maps/google_maps.dart';

late Polyline flightPath;
late GMap map;

void main() {
  final mapOptions = MapOptions()
    ..zoom = 3
    ..center = LatLng(0, -180)
    ..mapTypeId = MapTypeId.TERRAIN;
  map = GMap(document.getElementById('map-canvas'), mapOptions);

  final flightPlanCoordinates = <LatLng>[
    LatLng(37.772323, -122.214897),
    LatLng(21.291982, -157.821856),
    LatLng(-18.142599, 178.431),
    LatLng(-27.46758, 153.027892)
  ];
  flightPath = Polyline(PolylineOptions()
    ..path = flightPlanCoordinates
    ..strokeColor = '#FF0000'
    ..strokeOpacity = 1.0
    ..strokeWeight = 2);

  document.getElementById('addLine')!.onClick.listen((_) => addLine());
  document.getElementById('removeLine')!.onClick.listen((_) => removeLine());

  addLine();
}

void addLine() {
  flightPath.map = map;
}

void removeLine() {
  flightPath.map = null;
}
