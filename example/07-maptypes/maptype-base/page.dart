import 'dart:html' hide Point;

import 'package:google_maps/google_maps.dart';

late GMap map;
final chicago = LatLng(41.850033, -87.6500523);
final tileSize = Size(256, 256);
final coordinateMapType = MapType()
  ..tileSize = tileSize
  ..maxZoom = 19
  ..getTile = (coord, zoom, ownerDocument) {
    final div = ownerDocument!.createElement('div')
      ..innerHtml = coord.toString();
    div.style
      ..width = '${tileSize.width}px'
      ..height = '${tileSize.height}px'
      ..fontSize = '10'
      ..borderStyle = 'solid'
      ..borderWidth = '1px'
      ..borderColor = '#AAAAAA'
      ..backgroundColor = '#E5E3DF';
    return div;
  }
  ..name = 'Tile #s'
  ..alt = 'Tile Coordinate Map Type';

void main() {
  final mapOptions = MapOptions()
    ..zoom = 10
    ..center = chicago
    ..streetViewControl = false
    ..mapTypeId = 'coordinate'
    ..mapTypeControlOptions = (MapTypeControlOptions()
      ..mapTypeIds = ['coordinate', MapTypeId.ROADMAP]
      ..style = MapTypeControlStyle.DROPDOWN_MENU);
  map = GMap(document.getElementById('map-canvas') as HtmlElement, mapOptions);

  map.onMaptypeidChanged.listen((_) {
    final showStreetViewControl = map.mapTypeId != 'coordinate';
    map.options = MapOptions()..streetViewControl = showStreetViewControl;
  });

  // Now attach the coordinate map type to the map's registry
  map.mapTypes!.set('coordinate', coordinateMapType);
}
