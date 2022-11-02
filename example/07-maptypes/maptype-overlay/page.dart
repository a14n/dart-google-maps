import 'dart:html' hide Point;

import 'package:google_maps/google_maps.dart';

late GMap map;
final chicago = LatLng(41.850033, -87.6500523);

void main() {
  final mapOptions = MapOptions()
    ..zoom = 10
    ..center = chicago;
  map = GMap(document.getElementById('map-canvas') as HtmlElement, mapOptions);

  // Insert this overlay map type as the first overlay map type at
  // position 0. Note that all overlay map types appear on top of
  // their parent base map.
  final tileSize = Size(256, 256);
  map.overlayMapTypes!.insertAt(
      0,
      MapType()
        ..tileSize = tileSize
        ..getTile = (coord, zoom, ownerDocument) {
          final div = ownerDocument!.createElement('div')
            ..text = coord.toString();
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
