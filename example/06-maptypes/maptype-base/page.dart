#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

class CoordMapType extends gmaps.MapType {
  CoordMapType() : super() {
    this.tileSize = jsw.retain(new gmaps.Size(256,256));
    this.maxZoom = 19;
    $.getTile = new jsw.Callback.many((js.Proxy tileCoord, num zoom, js.Proxy ownerDocument) {
      if (ownerDocument.createElement("div") is js.Proxy) {
        return _getTileFromOtherDocument(new gmaps.Point.fromJsProxy(tileCoord), zoom, new jsw.IsJsProxy.fromJsProxy(ownerDocument));
      } else {
        return _getTile(new gmaps.Point.fromJsProxy(tileCoord), zoom);
      }
    });
    this.name = 'Tile #s';
    this.alt = 'Tile Coordinate Map Type';
  }

  DivElement _getTile(gmaps.Point coord, num zoom) {
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

  js.Proxy _getTileFromOtherDocument(gmaps.Point coord, num zoom, jsw.IsJsProxy ownerDocument) {
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

gmaps.GMap map;
final gmaps.LatLng chicago = jsw.retain(new gmaps.LatLng(41.850033,-87.6500523));
final CoordMapType coordinateMapType = jsw.retain(new CoordMapType());

void main() {
  js.scoped(() {
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
    map = jsw.retain(new gmaps.GMap(query("#map_canvas"), mapOptions));

    map.on.maptypeidChanged.add(() {
      final showStreetViewControl = map.getMapTypeId() != 'coordinate';
      map.setOptions(new gmaps.MapOptions()
        ..streetViewControl = showStreetViewControl
      );
    });

    // Now attach the coordinate map type to the map's registry
    map.mapTypes.set('coordinate', coordinateMapType);
  });
}
