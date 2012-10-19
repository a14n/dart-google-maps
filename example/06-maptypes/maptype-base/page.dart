import 'dart:html' hide Point;
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart';

class CoordMapType extends MapType {
  CoordMapType() : super() {
    this.tileSize = jsw.retain(new Size(256,256));
    this.maxZoom = 19;
    $.getTile = new jsw.Callback.many((js.Proxy tileCoord, num zoom, js.Proxy ownerDocument) {
      if (ownerDocument.createElement("div") is js.Proxy) {
        return _getTileFromOtherDocument(new Point.fromJsProxy(tileCoord), zoom, new jsw.IsJsProxy.fromJsProxy(ownerDocument));
      } else {
        return _getTile(new Point.fromJsProxy(tileCoord), zoom);
      }
    });
    this.name = 'Tile #s';
    this.alt = 'Tile Coordinate Map Type';
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
      ..backgroundColor = '#E5E3DF'
      ;
    return div;
  }

  js.Proxy _getTileFromOtherDocument(Point coord, num zoom, jsw.IsJsProxy ownerDocument) {
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
      ..$.backgroundColor = '#E5E3DF'
      ;
    return div;
  }
}

GMap map;
final LatLng chicago = jsw.retain(new LatLng(41.850033,-87.6500523));
final CoordMapType coordinateMapType = jsw.retain(new CoordMapType());

void main() {
  js.scoped(() {
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
    map = jsw.retain(new GMap(query("#map_canvas"), mapOptions));

    map.on.maptypeidChanged.add(() {
      final showStreetViewControl = map.mapTypeId != 'coordinate';
      map.options = new MapOptions()
        ..streetViewControl = showStreetViewControl
      ;
    });

    // Now attach the coordinate map type to the map's registry
    map.mapTypes.set('coordinate', coordinateMapType);
  });
}
