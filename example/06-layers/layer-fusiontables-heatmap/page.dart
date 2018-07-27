import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final map = GMap(
      document.getElementById('map-canvas'),
      MapOptions()
        ..center = LatLng(10, -140)
        ..zoom = 3);

  FusionTablesLayer(FusionTablesLayerOptions()
        ..query = (FusionTablesQuery()
          ..select = 'location'
          ..from = '1xWyeuAhIFK_aED1ikkQEGmR8mINSCJO9Vq-BPQ')
        ..heatmap = (FusionTablesHeatmap()..enabled = true))
      .map = map;
}
