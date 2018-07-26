import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final chicago = LatLng(41.850033, -87.6500523);
  final map = GMap(
      document.getElementById('map-canvas'),
      MapOptions()
        ..center = chicago
        ..zoom = 11);

  final layer = FusionTablesLayer(FusionTablesLayerOptions()
    ..query = (FusionTablesQuery()
      ..select = "'Geocodable address'"
      ..from = '1mZ53Z70NsChnBMm-qEYmSDOvLXgrreLTkQUvvg'));
  layer.map = map;
}
