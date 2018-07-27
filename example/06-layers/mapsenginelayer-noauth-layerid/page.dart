import 'dart:html';
import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_visualization.dart';

void main() {
  final mapOptions = MapOptions()
    ..zoom = 5
    ..center = LatLng(42, -99);
  final map = GMap(document.getElementById('map-canvas'), mapOptions);

  MapsEngineLayer(MapsEngineLayerOptions()
    ..layerId = '10446176163891957399-12677872887550376890'
    ..map = map
    ..clickable = true
    ..suppressInfoWindows = false);

  MapsEngineLayer(MapsEngineLayerOptions()
        ..layerId = '10446176163891957399-01658747114625264102')
      .map = map;
}
