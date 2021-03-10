import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final map = GMap(
      document.getElementById('map-canvas'),
      MapOptions()
        ..zoom = 4
        ..center = LatLng(-28, 137.883));

  map.data!
      .loadGeoJson('https://storage.googleapis.com/maps-devrel/google.json');

  // Set the stroke width, and fill color for each polygon
  final featureStyle = DataStyleOptions()
    ..fillColor = 'green'
    ..strokeWeight = 1;
  map.data!.style = featureStyle;
}
