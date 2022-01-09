import 'dart:html';

import 'package:google_maps/google_maps.dart';

void main() {
  GMap(
    document.getElementById('map') as HtmlElement,
    MapOptions()
      ..zoom = 4
      ..center = LatLng(-33, 151)
      ..mapTypeControl = true
      ..mapTypeControlOptions = (MapTypeControlOptions()
        ..style = MapTypeControlStyle.DROPDOWN_MENU
        ..mapTypeIds = [MapTypeId.ROADMAP, MapTypeId.TERRAIN]),
  );
}
