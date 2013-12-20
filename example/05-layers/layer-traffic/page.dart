import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final myLatlng = new LatLng(34.04924594193164, -118.24104309082031);
  final mapOptions = new MapOptions()
    ..zoom = 13
    ..center = myLatlng
    ..mapTypeId = MapTypeId.ROADMAP
    ;
  final map = new GMap(querySelector("#map_canvas"), mapOptions);

  final trafficLayer = new TrafficLayer();
  trafficLayer.map = map;
}
