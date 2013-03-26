import 'dart:html' hide Point;
import 'package:js/js.dart' as js;
import 'package:js/js_wrapping.dart' as jsw;
import 'package:google_maps/google_maps.dart';

class CoordMapType extends MapType {
  CoordMapType(Size tileSize) : super() {
    this.tileSize = js.retain(tileSize);
    $unsafe.getTile = new js.Callback.many((js.Proxy tileCoord, num zoom, js.Proxy ownerDocument) {
      if (ownerDocument.value.createElement("div") is js.Proxy) {
        return _getTileFromOtherDocument(Point.cast(tileCoord), zoom, ownerDocument == null ? null : new jsw.TypedProxy.fromProxy(ownerDocument));
      } else {
        return _getTile(Point.cast(tileCoord), zoom);
      }
    });
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

  jsw.TypedProxy _getTileFromOtherDocument(Point coord, num zoom, jsw.TypedProxy ownerDocument) {
    final div = new jsw.TypedProxy.fromProxy(ownerDocument.$unsafe.createElement("div"))
      ..$unsafe.innerHTML = coord.toString()
      ;
    final style = new jsw.TypedProxy.fromProxy(div.$unsafe.style);
    style
      ..$unsafe.width = '${tileSize.width}px'
      ..$unsafe.height = '${tileSize.height}px'
      ..$unsafe.fontSize = '10'
      ..$unsafe.borderStyle = 'solid'
      ..$unsafe.borderWidth = '1px'
      ..$unsafe.borderColor = '#AAAAAA'
      ;
    return div;
  }
}

GMap map;
LatLng chicago;

void main() {
  js.scoped(() {
    chicago = js.retain(new LatLng(41.850033,-87.6500523));

    final mapOptions = new MapOptions()
      ..zoom = 10
      ..center = chicago
      ..mapTypeId = MapTypeId.ROADMAP
      ;
    map = js.retain(new GMap(query("#map_canvas"), mapOptions));

    // Insert this overlay map type as the first overlay map type at
    // position 0. Note that all overlay map types appear on top of
    // their parent base map.
    map.overlayMapTypes.insertAt(0, js.retain(new CoordMapType(new Size(256, 256))));
  });
}
