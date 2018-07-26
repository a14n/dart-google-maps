import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = MapOptions()
    ..zoom = 4
    ..center = LatLng(-33, 151)
    ..mapTypeControl = true
    ..mapTypeControlOptions = (MapTypeControlOptions()
      ..style = MapTypeControlStyle.DEFAULT
      ..mapTypeIds = [MapTypeId.ROADMAP, MapTypeId.TERRAIN])
    ..zoomControl = true
    ..zoomControlOptions =
        (ZoomControlOptions()..style = ZoomControlStyle.SMALL);

  GMap(document.getElementById('map-canvas'), mapOptions);
}
