import 'dart:html' hide Point;
import 'dart:math' as Math;
import 'package:js/js.dart' as js;
import 'package:google_maps/optional.dart';
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart';

const IMAGE_URL = "https://google-developers.appspot.com/maps/documentation/javascript/examples";

final LatLng chicago = jsw.retain(new LatLng(41.850033, -87.6500523));
final LatLng anchorage = jsw.retain(new LatLng(61.2180556, -149.9002778));
final LatLng mexico = jsw.retain(new LatLng(19.4270499, -99.1275711));
final LatLng equator = jsw.retain(new LatLng(0,0));
final LatLng london = jsw.retain(new LatLng(51.5001524, -0.1262362));
final LatLng johannesburg = jsw.retain(new LatLng(-26.201452, 28.045488));
final LatLng kinshasa = jsw.retain(new LatLng(-4.325, 15.322222));
final LatLng sydney = jsw.retain(new LatLng( -33.867139, 151.207114));

final locationArray = [chicago,anchorage,mexico,equator,london,johannesburg,kinshasa,sydney];
final locationNameArray = ['Chicago','Anchorage','Mexico City','The Equator','London','Johannesburg','Kinshasa','Sydney'];

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

class GallPetersProjection extends Projection {

  // Using the base map tile, denote the lat/lon of the equatorial origin.
  final Point _worldOrigin = jsw.retain(new Point(GALL_PETERS_RANGE_X * 400 / 800, GALL_PETERS_RANGE_Y / 2));

  // This projection has equidistant meridians, so each longitude degree is a linear
  // mapping.
  const _worldCoordinatePerLonDegree = GALL_PETERS_RANGE_X / 360;

  // This constant merely reflects that latitudes vary from +90 to -90 degrees.
  const _worldCoordinateLatRange = GALL_PETERS_RANGE_Y / 2;

  // TODO make a constructor with optionals
  GallPetersProjection() : super() {
    $.fromLatLngToPoint = new jsw.Callback.many((Option<js.Proxy> latLng, [Option<js.Proxy> point]) {
      if (?point) {
        return _fromLatLngToPoint(latLng.map((e) => new LatLng.fromJsProxy(e)).value, point.map((e) => new Point.fromJsProxy(e)).value);
      } else {
        return _fromLatLngToPoint(latLng.map((e) => new LatLng.fromJsProxy(e)).value);
      }
    });
    $.fromPointToLatLng = new jsw.Callback.many((Option<js.Proxy> pixel, [Option<bool> nowrap]) {
      if (?nowrap) {
        return _fromPointToLatLng(pixel.map((e) => new Point.fromJsProxy(e)).value, nowrap.value);
      } else {
        return _fromPointToLatLng(pixel.map((e) => new Point.fromJsProxy(e)).value);
      }
    });
  }

  Point _fromLatLngToPoint(LatLng latLng, [Point point]) {
    final origin = this._worldOrigin;
    final x = origin.x + this._worldCoordinatePerLonDegree * latLng.lng;

    // Note that latitude is measured from the world coordinate origin
    // at the top left of the map.
    final latRadians = degreesToRadians(latLng.lat);
    final y = origin.y - this._worldCoordinateLatRange * Math.sin(latRadians);

    return new Point(x, y);
  }

  LatLng _fromPointToLatLng(Point point, [bool nowrap]) {
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
    return new LatLng(lat, lng, nowrap);
  }
}

void main() {
  js.scoped(() {
    final gallPetersMapType = new ImageMapType(new ImageMapTypeOptions()
      ..getTileUrl = (Point coord, num zoom) {
        final numTiles = 1 << zoom;

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
      ..tileSize = new Size(800, 512)
      //..isPng = true
      ..minZoom = 0
      ..maxZoom = 1
      ..name = 'Gall-Peters'
    );

    gallPetersMapType.projection = jsw.retain(new GallPetersProjection());

    final mapOptions = new MapOptions()
      ..zoom = 0
      ..center = new LatLng(0,0)
      ..mapTypeControlOptions = (new MapTypeControlOptions()
        ..mapTypeIds = [MapTypeId.ROADMAP, 'gallPetersMap']
      )
    ;
    final gallPetersMap = new GMap(query('#gallPetersMap'), mapOptions);

    gallPetersMap.mapTypes.set('gallPetersMap', gallPetersMapType);
    gallPetersMap.mapTypeId = 'gallPetersMap';

    for (var i = 0; i < locationArray.length; i++) {
      new Marker(new MarkerOptions()
        ..position = locationArray[i]
        ..map = gallPetersMap
        ..title = locationNameArray[i]
      );
    }

    gallPetersMap.on.click.add((e) {
      window.alert('Point.X.Y: ${e.latLng}');
    });
  });
}