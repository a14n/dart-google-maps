import 'dart:html' hide Point;
import 'dart:js' as js;

import 'package:google_maps/google_maps.dart';

class CoordMapType extends MapType {
  CoordMapType(Size tileSize) : super() {
    this.tileSize = tileSize;
    $unsafe['getTile'] = (js.JsObject tileCoord, num zoom, HtmlDocument ownerDocument) {
      return _getTile(Point.$wrap(tileCoord), zoom, ownerDocument);
    };
  }

  Element _getTile(Point coord, num zoom, HtmlDocument ownerDocument) {
    final div = ownerDocument.createElement('div')
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
  map = new GMap(querySelector("#map_canvas"), mapOptions);

  // Insert this overlay map type as the first overlay map type at
  // position 0. Note that all overlay map types appear on top of
  // their parent base map.
  map.overlayMapTypes.insertAt(0, new CoordMapType(new Size(256, 256)));
}
