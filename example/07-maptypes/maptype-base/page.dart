import 'dart:html' hide Point;

import 'package:google_maps/google_maps.dart';
import 'package:js_wrapping/js_wrapping.dart';

class CoordMapType extends MapType {
  CoordMapType() : super() {
    this.tileSize = new Size(256, 256);
    this.maxZoom = 19;
    asJsObject(this)['getTile'] = (JsObject tileCoord, num zoom,
        HtmlDocument ownerDocument) {
      return _getTile(new Point.created(tileCoord), zoom, ownerDocument);
    };
    this.name = 'Tile #s';
    this.alt = 'Tile Coordinate Map Type';
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
final chicago = new LatLng(41.850033, -87.6500523);
final coordinateMapType = new CoordMapType();

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 10
    ..center = chicago
    ..streetViewControl = false
    ..mapTypeId = "coordinate"
    ..mapTypeControlOptions = (new MapTypeControlOptions()
      ..mapTypeIds = ['coordinate', MapTypeId.ROADMAP]
      ..style = MapTypeControlStyle.DROPDOWN_MENU);
  map = new GMap(document.getElementById('map-canvas'), mapOptions);

  map.onMaptypeidChanged.listen((_) {
    final showStreetViewControl = map.mapTypeId != 'coordinate';
    map.options = new MapOptions()..streetViewControl = showStreetViewControl;
  });

  // Now attach the coordinate map type to the map's registry
  map.mapTypes.set('coordinate', coordinateMapType);
}
