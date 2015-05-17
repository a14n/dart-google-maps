import 'dart:html';
import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_visualization.dart';

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 5
    ..center = new LatLng(42, -99);
  final map = new GMap(document.getElementById('map-canvas'), mapOptions);

  new MapsEngineLayer(new MapsEngineLayerOptions()
    ..layerId = '10446176163891957399-12677872887550376890'
    ..map = map
    ..clickable = true
    ..suppressInfoWindows = false);

  var mapsEngineLayer2 = new MapsEngineLayer(new MapsEngineLayerOptions()
    ..layerId = '10446176163891957399-01658747114625264102');
  mapsEngineLayer2.map = map;
}
