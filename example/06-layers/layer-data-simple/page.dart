import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final map = new GMap(document.getElementById('map-canvas'), new MapOptions()
    ..zoom = 4
    ..center = new LatLng(-28, 137.883));

  map.data
      .loadGeoJson('https://storage.googleapis.com/maps-devrel/google.json');
}
