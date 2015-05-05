import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 4
    ..center = new LatLng(-33, 151)
    ..mapTypeControl = true
    ..mapTypeControlOptions = (new MapTypeControlOptions()
      ..style = MapTypeControlStyle.DEFAULT
      ..mapTypeIds = [MapTypeId.ROADMAP, MapTypeId.TERRAIN])
    ..zoomControl = true
    ..zoomControlOptions = (new ZoomControlOptions()
      ..style = ZoomControlStyle.SMALL);

  new GMap(document.getElementById('map-canvas'), mapOptions);
}
