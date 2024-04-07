import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

late Map map;
final chicago = LatLng(41.850033, -87.6500523);

void main() {
  final mapOptions = MapOptions()
    ..zoom = 10
    ..center = chicago;
  map = Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  // Insert this overlay map type as the first overlay map type at
  // position 0. Note that all overlay map types appear on top of
  // their parent base map.
  final tileSize = Size(256, 256);
  map.overlayMapTypes.insertAt(
      0,
      MapType()
        ..tileSize = tileSize
        ..getTile = (coord, zoom, ownerDocument) {
          final div = (ownerDocument.createElement('div') as HTMLDivElement)
            ..textContent = coord.toString();
          div.style
            ..width = '${tileSize.width}px'
            ..height = '${tileSize.height}px'
            ..fontSize = '10'
            ..borderStyle = 'solid'
            ..borderWidth = '1px'
            ..borderColor = '#AAAAAA';
          return div;
        });
}
