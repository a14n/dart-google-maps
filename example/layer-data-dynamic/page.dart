import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

void main() {
  final map = Map(
      document.getElementById('map-canvas') as HTMLElement,
      MapOptions()
        ..zoom = 4
        ..center = LatLng(-28, 137.883));

  map.data
      .loadGeoJson('https://storage.googleapis.com/maps-devrel/google.json');

  // Color each letter gray. Change the color when the isColorful property
  // is set to true.
  map.data.style = (DataFeature feature) {
    var color = 'gray';
    if ((feature.getProperty('isColorful') as JSBoolean?)?.toDart == true) {
      color = feature.getProperty('color') as String;
    }
    return DataStyleOptions()
      ..fillColor = color
      ..strokeColor = color
      ..strokeWeight = 2;
  }.toJS;

  // When the user clicks, set 'isColorful', changing the color of the letters.
  map.data.onClick.listen((e) {
    e.feature.setProperty('isColorful', true.toJS);
  });

  // When the user hovers, tempt them to click by outlining the letters.
  // Call revertStyle() to remove all overrides. This will use the style rules
  // defined in the function passed to setStyle()
  map.data.onMouseover.listen((e) {
    map.data.revertStyle();
    map.data.overrideStyle(e.feature, DataStyleOptions()..strokeWeight = 8);
  });

  map.data.onMouseout.listen((e) {
    map.data.revertStyle();
  });
}
