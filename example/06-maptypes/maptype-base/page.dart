import 'dart:html' hide Point;
import 'dart:js' as js;

import 'package:google_maps/google_maps.dart';

class CoordMapType extends MapType {
  CoordMapType() : super() {
    this.tileSize = new Size(256,256);
    this.maxZoom = 19;
    $unsafe['getTile'] = (js.JsObject tileCoord, num zoom, js.JsObject ownerDocument) {
      if (ownerDocument.callMethod('createElement', ['div']) is js.JsObject) {
        return _getTileWithoutElementHandled(Point.cast(tileCoord), zoom, ownerDocument);
      } else {
        return _getTile(Point.cast(tileCoord), zoom);
      }
    };
    this.name = 'Tile #s';
    this.alt = 'Tile Coordinate Map Type';
  }

  DivElement _getTile(Point coord, num zoom) {
    final div = new DivElement()
      ..innerHtml = coord.toString()
      ;
    div.style
      ..width = '${tileSize.width}px'
      ..height = '${tileSize.height}px'
      ..fontSize = '10'
      ..borderStyle = 'solid'
      ..borderWidth = '1px'
      ..borderColor = '#AAAAAA'
      ..backgroundColor = '#E5E3DF'
      ;
    return div;
  }

  js.JsObject _getTileWithoutElementHandled(Point coord, num zoom, js.JsObject ownerDocument) {
    final div = ownerDocument.callMethod('createElement', ['div'])
      ..['innerHTML'] = coord.toString()
      ;
    final style = div['style'];
    style
      ..['width'] = '${tileSize.width}px'
      ..['height'] = '${tileSize.height}px'
      ..['fontSize'] = '10'
      ..['borderStyle'] = 'solid'
      ..['borderWidth'] = '1px'
      ..['borderColor'] = '#AAAAAA'
      ..['backgroundColor'] = '#E5E3DF'
      ;
    return div;
  }
}

GMap map;
final LatLng chicago = new LatLng(41.850033,-87.6500523);
final CoordMapType coordinateMapType = new CoordMapType();

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 10
    ..center = chicago
    ..streetViewControl = false
    ..mapTypeId = "coordinate"
    ..mapTypeControlOptions = (new MapTypeControlOptions()
      ..mapTypeIds = ['coordinate', MapTypeId.ROADMAP]
      ..style = MapTypeControlStyle.DROPDOWN_MENU
    )
    ;
  map = new GMap(query("#map_canvas"), mapOptions);

  map.onMaptypeidChanged.listen((_) {
    final showStreetViewControl = map.mapTypeId != 'coordinate';
    map.options = new MapOptions()
      ..streetViewControl = showStreetViewControl
    ;
  });

  // Now attach the coordinate map type to the map's registry
  map.mapTypes.set('coordinate', coordinateMapType);
}
