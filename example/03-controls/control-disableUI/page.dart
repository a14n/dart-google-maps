import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 4
    ..center = new LatLng(-33, 151)
    ..disableDefaultUI = true
    ..mapTypeId = MapTypeId.ROADMAP
  ;

  final map = new GMap(query("#map_canvas"), mapOptions);
}
