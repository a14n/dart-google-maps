import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

late Map map;
final chicago = LatLng(41.850033, -87.6500523);
final tileSize = Size(256, 256);
final coordinateMapType = MapType()
  ..tileSize = tileSize
  ..maxZoom = 19
  ..getTile = (coord, zoom, ownerDocument) {
    final div = (ownerDocument.createElement('div') as HTMLDivElement)
      ..textContent = coord.toString();
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
    ..mapTypeId = 'coordinate'.toJS
    ..mapTypeControlOptions = (MapTypeControlOptions()
      ..mapTypeIds =
          ['coordinate', MapTypeId.ROADMAP].jsify() as JSArray<JSObject>
      ..style = MapTypeControlStyle.DROPDOWN_MENU);
  map = Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  map.onMaptypeidChanged.listen((_) {
    final showStreetViewControl = map.mapTypeId != 'coordinate'.toJS;
    map.options = MapOptions()..streetViewControl = showStreetViewControl;
  });

  // Now attach the coordinate map type to the map's registry
  map.mapTypes.set('coordinate', coordinateMapType);
}
