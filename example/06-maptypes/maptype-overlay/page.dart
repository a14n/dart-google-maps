#import('dart:html');
#import('../../../lib/jsni.dart', prefix:'js');
#import('../../../lib/gmaps.dart', prefix:'gmaps');

class CoordMapType extends gmaps.MapType {
  CoordMapType(gmaps.Size tileSize) : super() {
    this.tileSize = tileSize;
    $["getTile"] = (List args) {
      if (args[2] == document) {
        return _getTile(new gmaps.Point.fromJsRef(args[0]), args[1], args[2]);
        // return _getTileForOtherDocument(new gmaps.Point.fromJsRef(args[0]), args[1], new js.JsObject.fromJsRef(js.getWindow().$.getJsRef("document")));
      } else {
        // TODO find a workaround to retrieve ownerDocument as Document ?
        return _getTileForOtherDocument(new gmaps.Point.fromJsRef(args[0]), args[1], new js.JsObject.fromJsRef(args[2]));
      }
    };
  }

  DivElement _getTile(gmaps.Point coord, num zoom, Document ownerDocument) {
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

  js.JsObject _getTileForOtherDocument(gmaps.Point coord, num zoom, js.JsObject ownerDocument) {
    final div = new js.JsObject.fromJsRef(ownerDocument.$.callForJsRef("createElement", ["div"]))
      ..$["innerHTML"] = coord.toString()
      ;
    final style = new js.JsObject.fromJsRef(div.$["style"]);
    style
      ..$["width"] = '${tileSize.width}px'
      ..$["height"] = '${tileSize.height}px'
      ..$["fontSize"] = '10'
      ..$["borderStyle"] = 'solid'
      ..$["borderWidth"] = '1px'
      ..$["borderColor"] = '#AAAAAA'
      ;
    return div;
  }
}

gmaps.GMap map;
gmaps.LatLng chicago;

void main() {
  chicago = new gmaps.LatLng(41.850033,-87.6500523);

  final mapOptions = new gmaps.MapOptions()
    ..zoom = 10
    ..center = chicago
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ;
  map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  // Insert this overlay map type as the first overlay map type at
  // position 0. Note that all overlay map types appear on top of
  // their parent base map.
  map.overlayMapTypes.insertAt(0, new CoordMapType(new gmaps.Size(256, 256)));
}
