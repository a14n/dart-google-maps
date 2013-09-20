import 'dart:html' hide Point;
import 'dart:js' as js;

import 'package:google_maps/google_maps.dart';

class CoordMapType extends MapType {
  CoordMapType(Size tileSize) : super() {
    this.tileSize = tileSize;
    $unsafe['getTile'] = (js.JsObject tileCoord, num zoom, js.JsObject ownerDocument) {
      if (ownerDocument.callMethod('createElement', ['div']) is js.JsObject) {
        return _getTileWithoutElementHandled(Point.cast(tileCoord), zoom, ownerDocument);
      } else {
        return _getTile(Point.cast(tileCoord), zoom);
      }
    };
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
      ;
    return div;
  }
}

GMap map;
LatLng chicago;

void main() {
  chicago = new LatLng(41.850033,-87.6500523);

  final mapOptions = new MapOptions()
    ..zoom = 10
    ..center = chicago
    ..mapTypeId = MapTypeId.ROADMAP
    ;
  map = new GMap(query("#map_canvas"), mapOptions);

  // Insert this overlay map type as the first overlay map type at
  // position 0. Note that all overlay map types appear on top of
  // their parent base map.
  map.overlayMapTypes.insertAt(0, new CoordMapType(new Size(256, 256)));
}
