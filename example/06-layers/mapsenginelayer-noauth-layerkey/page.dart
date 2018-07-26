import 'dart:html';
import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_visualization.dart';

void main() {
  final mapOptions = MapOptions()
    ..zoom = 5
    ..center = LatLng(42, -99);
  final map = GMap(document.getElementById('map-canvas'), mapOptions);

  MapsEngineLayer(MapsEngineLayerOptions()
    ..layerId = '10446176163891957399-13516001307527776624-4'
    ..layerKey = 'layer_00001'
    ..map = map
    ..clickable = true
    ..suppressInfoWindows = false);

  var mapsEngineLayer2 = MapsEngineLayer(MapsEngineLayerOptions()
    ..layerId = '10446176163891957399-13516001307527776624-4'
    ..layerKey = 'layer_00002');
  mapsEngineLayer2.map = map;
}
