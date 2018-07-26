import 'dart:html';
import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_visualization.dart';

void main() {
  final mapOptions = MapOptions()
    ..zoom = 14
    ..center = LatLng(59.322506, 18.010025);
  final map = GMap(document.getElementById('map-canvas'), mapOptions);

// See the page below for information on how to get the layerId.
// https://developers.google.com/maps/documentation/javascript/mapsenginelayers#the_layer_constructor
  MapsEngineLayer(MapsEngineLayerOptions()
    ..layerId = '06673056454046135537-08896501997766553811'
    ..map = map);
}
