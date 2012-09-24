#import('dart:html');
#import('package:dart_google_maps/jsni.dart', prefix:'js');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

class CoordMapType extends gmaps.MapType {
  CoordMapType() : super() {
    this.tileSize = new gmaps.Size(256,256);
    this.maxZoom = 19;
    $["getTile"] = (List args) {
      if (args[2] == document) {
        return _getTile(new gmaps.Point.fromJsRef(args[0]), args[1], args[2]);
      } else {
        // TODO find a workaround to retrieve ownerDocument as Document ?
        return _getTileForOtherDocument(new gmaps.Point.fromJsRef(args[0]), args[1], new js.JsObject.fromJsRef(args[2]));
      }
    };
    this.name = 'Tile #s';
    this.alt = 'Tile Coordinate Map Type';
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
      ..backgroundColor = '#E5E3DF'
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
      ..$["backgroundColor"] = '#E5E3DF'
      ;
    return div;
  }
}

gmaps.GMap map;
final chicago = new gmaps.LatLng(41.850033,-87.6500523);
final coordinateMapType = new CoordMapType();

void main() {
  final mapOptions = new gmaps.MapOptions()
    ..zoom = 10
    ..center = chicago
    ..streetViewControl = false
    ..mapTypeId = "coordinate"
    ..mapTypeControlOptions = (new gmaps.MapTypeControlOptions()
      ..mapTypeIds = ['coordinate', gmaps.MapTypeId.ROADMAP]
      ..style = gmaps.MapTypeControlStyle.DROPDOWN_MENU
    )
    ;
  map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  gmaps.Events.addListener(map, 'maptypeid_changed', (e) {
    final showStreetViewControl = map.getMapTypeId() != 'coordinate';
    map.setOptions(new gmaps.MapOptions()
      ..streetViewControl = showStreetViewControl
    );
  });

  // Now attach the coordinate map type to the map's registry
  map.mapTypes.set_('coordinate', coordinateMapType);
}
