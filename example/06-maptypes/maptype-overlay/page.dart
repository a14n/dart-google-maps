import 'dart:html' hide Point;
import 'package:js/js.dart' as js;
import 'package:google_maps/optional.dart';
import 'package:google_maps/js_wrap.dart' as jsw;
import 'package:google_maps/google_maps.dart';

class CoordMapType extends MapType {
  CoordMapType(Size tileSize) : super() {
    this.tileSize = jsw.retain(tileSize);
    $.getTile = new jsw.Callback.many((Option<js.Proxy> tileCoord, Option<num> zoom, Option<js.Proxy> ownerDocument) {
      if (ownerDocument.value.createElement("div") is js.Proxy) {
        return _getTileFromOtherDocument(tileCoord.map(Point.INSTANCIATOR).value, zoom.value, ownerDocument.map((e) => new jsw.IsJsProxy.fromJsProxy(e)).value);
      } else {
        return _getTile(tileCoord.map(Point.INSTANCIATOR).value, zoom.value);
      }
    });
  }

  DivElement _getTile(Point coord, num zoom) {
    final div = new DivElement()
      ..innerHTML = coord.toString()
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

  jsw.IsJsProxy _getTileFromOtherDocument(Point coord, num zoom, jsw.IsJsProxy ownerDocument) {
    final div = new jsw.IsJsProxy.fromJsProxy(ownerDocument.$.createElement("div"))
      ..$.innerHTML = coord.toString()
      ;
    final style = new jsw.IsJsProxy.fromJsProxy(div.$.style);
    style
      ..$.width = '${tileSize.width}px'
      ..$.height = '${tileSize.height}px'
      ..$.fontSize = '10'
      ..$.borderStyle = 'solid'
      ..$.borderWidth = '1px'
      ..$.borderColor = '#AAAAAA'
      ;
    return div;
  }
}

GMap map;
LatLng chicago;

void main() {
  js.scoped(() {
    chicago = jsw.retain(new LatLng(41.850033,-87.6500523));

    final mapOptions = new MapOptions()
      ..zoom = 10
      ..center = chicago
      ..mapTypeId = MapTypeId.ROADMAP
      ;
    map = jsw.retain(new GMap(query("#map_canvas"), mapOptions));

    // Insert this overlay map type as the first overlay map type at
    // position 0. Note that all overlay map types appear on top of
    // their parent base map.
    map.overlayMapTypes.insertAt(0, jsw.retain(new CoordMapType(new Size(256, 256))));
  });
}
