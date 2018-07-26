import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final australia = LatLng(-25, 133);
  final map = GMap(
      document.getElementById('map-canvas'),
      MapOptions()
        ..center = australia
        ..zoom = 4);

  final layer = FusionTablesLayer(FusionTablesLayerOptions()
    ..query = (FusionTablesQuery()
      ..select = 'geometry'
      ..from = '1ertEwm-1bMBhpEwHhtNYT47HQ9k2ki_6sRa-UQ')
    ..styles = [
      FusionTablesStyle()
        ..polygonOptions = (FusionTablesPolygonOptions()
          ..fillColor = '#00FF00'
          ..fillOpacity = 0.3),
      FusionTablesStyle()
        ..where = 'birds > 300'
        ..polygonOptions =
            (FusionTablesPolygonOptions()..fillColor = '#0000FF'),
      FusionTablesStyle()
        ..where = 'population > 5'
        ..polygonOptions = (FusionTablesPolygonOptions()..fillOpacity = 1.0)
    ]);
  layer.map = map;
}
