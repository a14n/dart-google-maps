#import('dart:html');
#import('dart:math', prefix:'Math');
#import('../../../gmaps.dart', prefix:'gmaps');

const IMAGE_URL = "https://google-developers.appspot.com/maps/documentation/javascript/examples";

// Note: this value is exact as the map projects a full 360 degrees of longitude
const GALL_PETERS_RANGE_X = 800;

// Note: this value is inexact as the map is cut off at ~ +/- 83 degrees.
// However, the polar regions produce very little increase in Y range, so
// we will use the tile size.
const GALL_PETERS_RANGE_Y = 510;

num degreesToRadians(num deg) {
  return deg * (Math.PI / 180);
}

num radiansToDegrees(num rad) {
  return rad / (Math.PI / 180);
}

class GallPetersProjection extends gmaps.Projection {

  // Using the base map tile, denote the lat/lon of the equatorial origin.
  gmaps.Point _worldOrigin;

  // This projection has equidistant meridians, so each longitude degree is a linear
  // mapping.
  const _worldCoordinatePerLonDegree = GALL_PETERS_RANGE_X / 360;

  // This constant merely reflects that latitudes vary from +90 to -90 degrees.
  const _worldCoordinateLatRange = GALL_PETERS_RANGE_Y / 2;

  GallPetersProjection() : super() {
    _worldOrigin = new gmaps.Point(GALL_PETERS_RANGE_X * 400 / 800, GALL_PETERS_RANGE_Y / 2);
    this["fromLatLngToPoint"] = (List args) {
      if (args.length == 2 && args[1] !== null) {
        return _fromLatLngToPoint(new gmaps.LatLng.fromJsRef(args[0]), new gmaps.Point.fromJsRef(args[1]));
      } else {
        return _fromLatLngToPoint(new gmaps.LatLng.fromJsRef(args[0]));
      }
    };
    this["fromPointToLatLng"] = (List args) {
      if (args.length == 2 && args[1] !== null) {
        return _fromPointToLatLng(new gmaps.Point.fromJsRef(args[0]), args[1]);
      } else {
        return _fromPointToLatLng(new gmaps.Point.fromJsRef(args[0]));
      }
    };
  }

  gmaps.Point _fromLatLngToPoint(gmaps.LatLng latLng, [gmaps.Point point]) {
    final origin = this._worldOrigin;
    final x = origin.x + this._worldCoordinatePerLonDegree * latLng.lng();

    // Note that latitude is measured from the world coordinate origin
    // at the top left of the map.
    final latRadians = degreesToRadians(latLng.lat());
    final y = origin.y - this._worldCoordinateLatRange * Math.sin(latRadians);

    return new gmaps.Point(x, y);
  }

  gmaps.LatLng _fromPointToLatLng(gmaps.Point point, [bool nowrap]) {
    var y = point.y;
    var x = point.x;

    if (y < 0) {
      y = 0;
    }
    if (y >= GALL_PETERS_RANGE_Y) {
      y = GALL_PETERS_RANGE_Y;
    }

    final origin = this._worldOrigin;
    final lng = (x - origin.x) / this._worldCoordinatePerLonDegree;
    final latRadians = Math.asin((origin.y - y) / this._worldCoordinateLatRange);
    final lat = radiansToDegrees(latRadians);
    return new gmaps.LatLng(lat, lng, nowrap);
  }
}

void main() {
  var chicago = new gmaps.LatLng(41.850033, -87.6500523);
  var anchorage = new gmaps.LatLng(61.2180556, -149.9002778);
  var mexico = new gmaps.LatLng(19.4270499, -99.1275711);
  var equator = new gmaps.LatLng(0,0);
  var london = new gmaps.LatLng(51.5001524, -0.1262362);
  var johannesburg = new gmaps.LatLng(-26.201452, 28.045488);
  var kinshasa = new gmaps.LatLng(-4.325, 15.322222);
  var sydney = new gmaps.LatLng( -33.867139, 151.207114);

  var locationArray = [chicago,anchorage,mexico,equator,london,johannesburg,kinshasa,sydney];
  var locationNameArray = ['Chicago','Anchorage','Mexico City','The Equator','London','Johannesburg','Kinshasa','Sydney'];

  var gallPetersMapType = new gmaps.ImageMapType(new gmaps.ImageMapTypeOptions()
    ..getTileUrl = (gmaps.Point coord, num zoom) {
      var numTiles = 1 << zoom;

      // Don't wrap tiles vertically.
      if (coord.y < 0 || coord.y >= numTiles) {
        return null;
      }

      // Wrap tiles horizontally.
      var x = ((coord.x % numTiles) + numTiles) % numTiles;

      // For simplicity, we use a tileset consisting of 1 tile at zoom level 0
      // and 4 tiles at zoom level 1. Note that we set the base URL to a relative
      // directory.
      return '${IMAGE_URL}/images/gall-peters_${zoom}_${x}_${coord.y}.png';
    }
    ..tileSize = new gmaps.Size(800, 512)
    //..isPng = true
    ..minZoom = 0
    ..maxZoom = 1
    ..name = 'Gall-Peters'
  );

  gallPetersMapType.projection = new GallPetersProjection();

  var mapOptions = new gmaps.MapOptions()
    ..zoom = 0
    ..center = new gmaps.LatLng(0,0)
    ..mapTypeControlOptions = (new gmaps.MapTypeControlOptions()
      ..mapTypeIds = [gmaps.MapTypeId.ROADMAP, 'gallPetersMap']
    )
  ;
  final gallPetersMap = new gmaps.GMap(query('#gallPetersMap'), mapOptions);

  gallPetersMap.mapTypes.set_('gallPetersMap', gallPetersMapType);
  gallPetersMap.setMapTypeId('gallPetersMap');

  for (var i = 0; i < locationArray.length; i++) {
    new gmaps.Marker(new gmaps.MarkerOptions()
      ..position = locationArray[i]
      ..map = gallPetersMap
      ..title = locationNameArray[i]
    );
  }

  gmaps.Events.addListener(gallPetersMap, 'click', function(event) {
    final me = new gmaps.MouseEvent.wrap(event);
    window.alert('Point.X.Y: ${me.latLng}');
  });
}