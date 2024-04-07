import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart' hide Event;

void main() {
  final mapDiv = document.getElementById('map') as HTMLElement;
  Map(
    mapDiv,
    MapOptions()
      ..zoom = 8
      ..center = LatLng(-34.397, 150.644),
  );

  // We add a DOM event here to show an alert if the DIV containing the
  // map is clicked.
  event.addDomListener(
    mapDiv,
    'click',
    (MapMouseEventOrIconMouseEvent e) {
      window.alert('DIV clicked');
    }.toJS,
  );
}
