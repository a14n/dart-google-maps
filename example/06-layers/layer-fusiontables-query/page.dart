import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final chicago = new LatLng(41.948766, -87.691497);
  final map = new GMap(document.getElementById('map-canvas'), new MapOptions()
    ..center = chicago
    ..zoom = 12);

  final layer = new FusionTablesLayer(new FusionTablesLayerOptions()
    ..query = (new FusionTablesQuery()
      ..select = 'address'
      ..from = '1d7qpn60tAvG4LEg4jvClZbc1ggp8fIGGvpMGzA'
      ..where = 'ridership > 5000'));
  layer.map = map;
}
