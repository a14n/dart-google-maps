import 'dart:html';
import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_visualization.dart';

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 5
    ..center = new LatLng(42, -99);
  final map = new GMap(document.getElementById('map-canvas'), mapOptions);

  new MapsEngineLayer(new MapsEngineLayerOptions()
    ..layerId = '10446176163891957399-13516001307527776624-4'
    ..layerKey = 'layer_00001'
    ..map = map
    ..clickable = true
    ..suppressInfoWindows = false);

  var mapsEngineLayer2 = new MapsEngineLayer(new MapsEngineLayerOptions()
    ..layerId = '10446176163891957399-13516001307527776624-4'
    ..layerKey = 'layer_00002');
  mapsEngineLayer2.map = map;
}
