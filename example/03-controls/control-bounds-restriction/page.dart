import 'dart:html';

import 'package:google_maps/google_maps.dart';

final newZealandBounds = LatLngBounds(
  LatLng(-47.35, 166.28),
  LatLng(-34.36, -175.81),
);
final auckland = LatLng(-37.06, 174.58);

void main() {
  GMap(
    document.getElementById('map') as HtmlElement,
    MapOptions()
      ..center = auckland
      ..restriction = (MapRestriction()
        ..latLngBounds = newZealandBounds
        ..strictBounds = false)
      ..zoom = 7,
  );
}
