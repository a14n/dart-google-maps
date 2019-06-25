import 'dart:html' hide Point;

import 'package:google_maps/google_maps.dart';

class CoordMapType extends MapType {
  CoordMapType(Size tileSize) : super() {
    this.tileSize = tileSize;
    getTile = _getTile;
  }

  Node _getTile(Point coord, num zoom, Document ownerDocument) {
    final div = ownerDocument.createElement('div')
      ..innerHtml = coord.toString();
    div.style
      ..width = '${tileSize.width}px'
      ..height = '${tileSize.height}px'
      ..fontSize = '10'
      ..borderStyle = 'solid'
      ..borderWidth = '1px'
      ..borderColor = '#AAAAAA';
    return div;
  }
}

GMap map;
final chicago = LatLng(41.850033, -87.6500523);

void main() {
  final mapOptions = MapOptions()
    ..zoom = 10
    ..center = chicago;
  map = GMap(document.getElementById('map-canvas'), mapOptions);

  // Insert this overlay map type as the first overlay map type at
  // position 0. Note that all overlay map types appear on top of
  // their parent base map.
  map.overlayMapTypes.insertAt(0, CoordMapType(Size(256, 256)));
}
