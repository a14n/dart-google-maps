import 'dart:js_interop';

import 'package:google_maps/google_maps.dart' hide event;
import 'package:web/web.dart';

void main() {
  final map = Map(
      document.getElementById('map-canvas') as HTMLElement,
      MapOptions()
        ..zoom = 4
        ..center = LatLng(-28, 137.883));

  map.data
      .loadGeoJson('https://storage.googleapis.com/maps-devrel/google.json');

  // Add some style.
  map.data.style = ((DataFeature feature) => DataStyleOptions()
    ..fillColor = (feature.getProperty('color') as JSString).toDart
    ..strokeWeight = 1).toJS;

  // Set mouseover event for each feature.
  map.data.onMouseover.listen((event) {
    document.getElementById('info-box')!.textContent =
        (event.feature.getProperty('letter') as JSString).toDart;
  });
}
