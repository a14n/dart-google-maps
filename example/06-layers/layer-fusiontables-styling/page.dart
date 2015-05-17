import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final australia = new LatLng(-25, 133);
  final map = new GMap(document.getElementById('map-canvas'), new MapOptions()
    ..center = australia
    ..zoom = 4);

  final layer = new FusionTablesLayer(new FusionTablesLayerOptions()
    ..query = (new FusionTablesQuery()
      ..select = 'geometry'
      ..from = '1ertEwm-1bMBhpEwHhtNYT47HQ9k2ki_6sRa-UQ')
    ..styles = [
      new FusionTablesStyle()
        ..polygonOptions = (new FusionTablesPolygonOptions()
          ..fillColor = '#00FF00'
          ..fillOpacity = 0.3),
      new FusionTablesStyle()
        ..where = 'birds > 300'
        ..polygonOptions = (new FusionTablesPolygonOptions()
          ..fillColor = '#0000FF'),
      new FusionTablesStyle()
        ..where = 'population > 5'
        ..polygonOptions = (new FusionTablesPolygonOptions()..fillOpacity = 1.0)
    ]);
  layer.map = map;
}
