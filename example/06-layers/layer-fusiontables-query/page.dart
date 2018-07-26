import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final chicago = LatLng(41.948766, -87.691497);
  final map = GMap(
      document.getElementById('map-canvas'),
      MapOptions()
        ..center = chicago
        ..zoom = 12);

  final layer = FusionTablesLayer(FusionTablesLayerOptions()
    ..query = (FusionTablesQuery()
      ..select = 'address'
      ..from = '1d7qpn60tAvG4LEg4jvClZbc1ggp8fIGGvpMGzA'
      ..where = 'ridership > 5000'));
  layer.map = map;
}
