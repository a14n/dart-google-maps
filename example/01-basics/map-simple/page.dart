import 'dart:html';

import 'package:google_maps/google_maps.dart';

void main() {
  visualRefresh = true;
  final mapOptions = new MapOptions()
    ..zoom = 8
    ..center = new LatLng(-34.397, 150.644)
    ..mapTypeId = MapTypeId.ROADMAP
    ;
  final map = new GMap(querySelector("#map_canvas"), mapOptions);
}
