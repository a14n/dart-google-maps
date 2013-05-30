import 'dart:html' hide Point;
import 'package:js/js.dart' as js;
import 'package:js/js_wrapping.dart' as jsw;
import 'package:google_maps/google_maps.dart';

class CoordMapType extends MapType {
  CoordMapType() : super() {
    this.tileSize = js.retain(new Size(256,256));
    this.maxZoom = 19;
    $unsafe.getTile = new js.Callback.many((js.Proxy tileCoord, num zoom, js.Proxy ownerDocument) {
      if (ownerDocument.createElement("div") is js.Proxy) {
        return _getTileFromOtherDocument(Point.cast(tileCoord), zoom, ownerDocument == null ? null : new jsw.TypedProxy.fromProxy(ownerDocument));
      } else {
        return _getTile(Point.cast(tileCoord), zoom);
      }
    });
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
      ..$unsafe.backgroundColor = '#E5E3DF'
      ;
    return div;
  }
}

GMap map;
final LatLng chicago = js.retain(new LatLng(41.850033,-87.6500523));
final CoordMapType coordinateMapType = js.retain(new CoordMapType());

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
  map = js.retain(new GMap(query("#map_canvas"), mapOptions));

  map.onMaptypeidChanged.listen((_) {
    final showStreetViewControl = map.mapTypeId != 'coordinate';
    map.options = new MapOptions()
      ..streetViewControl = showStreetViewControl
    ;
  });

  // Now attach the coordinate map type to the map's registry
  map.mapTypes.set('coordinate', coordinateMapType);
}
