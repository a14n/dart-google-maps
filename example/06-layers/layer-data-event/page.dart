import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final map = new GMap(document.getElementById('map-canvas'), new MapOptions()
    ..zoom = 4
    ..center = new LatLng(-28, 137.883));

  map.data
      .loadGeoJson('https://storage.googleapis.com/maps-devrel/google.json');

  // Add some style.
  map.data.style = (DataFeature feature) => new DataStyleOptions()
    ..fillColor = feature.getProperty('color')
    ..strokeWeight = 1;

  // Set mouseover event for each feature.
  map.data.onMouseover.listen((event) {
    document.getElementById('info-box').text =
        event.feature.getProperty('letter');
  });
}
