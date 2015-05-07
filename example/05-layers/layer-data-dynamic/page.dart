import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final map = new GMap(document.getElementById('map-canvas'), new MapOptions()
    ..zoom = 4
    ..center = new LatLng(-28, 137.883));

  map.data
      .loadGeoJson('https://storage.googleapis.com/maps-devrel/google.json');

  // Color each letter gray. Change the color when the isColorful property
  // is set to true.
  map.data.style = (DataFeature feature) {
    var color = 'gray';
    if (feature.getProperty('isColorful') == true) {
      color = feature.getProperty('color');
    }
    return new DataStyleOptions()
      ..fillColor = color
      ..strokeColor = color
      ..strokeWeight = 2;
  };

  // When the user clicks, set 'isColorful', changing the color of the letters.
  map.data.onClick.listen((event) {
    event.feature.setProperty('isColorful', true);
  });

  // When the user hovers, tempt them to click by outlining the letters.
  // Call revertStyle() to remove all overrides. This will use the style rules
  // defined in the function passed to setStyle()
  map.data.onMouseover.listen((event) {
    map.data.revertStyle();
    map.data.overrideStyle(
        event.feature, new DataStyleOptions()..strokeWeight = 8);
  });

  map.data.onMouseout.listen((event) {
    map.data.revertStyle();
  });
}
