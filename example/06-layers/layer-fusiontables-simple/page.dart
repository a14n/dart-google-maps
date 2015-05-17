import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final chicago = new LatLng(41.850033, -87.6500523);
  final map = new GMap(document.getElementById('map-canvas'), new MapOptions()
    ..center = chicago
    ..zoom = 11);

  final layer = new FusionTablesLayer(new FusionTablesLayerOptions()
    ..query = (new FusionTablesQuery()
      ..select = "'Geocodable address'"
      ..from = '1mZ53Z70NsChnBMm-qEYmSDOvLXgrreLTkQUvvg'));
  layer.map = map;
}
