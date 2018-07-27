import 'dart:html' hide Point;

import 'package:google_maps/google_maps.dart';
import 'package:js_wrapping/js_wrapping.dart';

class CoordMapType extends MapType {
  CoordMapType() : super() {
    tileSize = Size(256, 256);
    maxZoom = 19;
    asJsObject(this)['getTile'] =
        (JsObject tileCoord, num zoom, HtmlDocument ownerDocument) =>
            _getTile(Point.created(tileCoord), zoom, ownerDocument);
    name = 'Tile #s';
    alt = 'Tile Coordinate Map Type';
  }

  Element _getTile(Point coord, num zoom, HtmlDocument ownerDocument) {
    final div = ownerDocument.createElement('div')
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
}

GMap map;
final chicago = LatLng(41.850033, -87.6500523);
final coordinateMapType = CoordMapType();

void main() {
  final mapOptions = MapOptions()
    ..zoom = 10
    ..center = chicago
    ..streetViewControl = false
    ..mapTypeId = 'coordinate'
    ..mapTypeControlOptions = (MapTypeControlOptions()
      ..mapTypeIds = ['coordinate', MapTypeId.ROADMAP]
      ..style = MapTypeControlStyle.DROPDOWN_MENU);
  map = GMap(document.getElementById('map-canvas'), mapOptions);

  map.onMaptypeidChanged.listen((_) {
    final showStreetViewControl = map.mapTypeId != 'coordinate';
    map.options = MapOptions()..streetViewControl = showStreetViewControl;
  });

  // Now attach the coordinate map type to the map's registry
  map.mapTypes.set('coordinate', coordinateMapType);
}
