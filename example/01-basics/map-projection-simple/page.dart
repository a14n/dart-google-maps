import 'dart:html' hide Point;
import 'dart:math' as Math;

import 'package:google_maps/google_maps.dart';
import 'package:js_wrapping/js_wrapping.dart';

const IMAGE_URL =
    "https://google-developers.appspot.com/maps/documentation/javascript/examples/full";

final chicago = new LatLng(41.850033, -87.6500523);
final anchorage = new LatLng(61.2180556, -149.9002778);
final mexico = new LatLng(19.4270499, -99.1275711);
final equator = new LatLng(0, 0);
final london = new LatLng(51.5001524, -0.1262362);
final johannesburg = new LatLng(-26.201452, 28.045488);
final kinshasa = new LatLng(-4.325, 15.322222);
final sydney = new LatLng(-33.867139, 151.207114);

final locationArray = <LatLng>[
  chicago,
  anchorage,
  mexico,
  equator,
  london,
  johannesburg,
  kinshasa,
  sydney
];
final locationNameArray = <String>[
  'Chicago',
  'Anchorage',
  'Mexico City',
  'The Equator',
  'London',
  'Johannesburg',
  'Kinshasa',
  'Sydney'
];

// Note: this value is exact as the map projects a full 360 degrees of longitude
const GALL_PETERS_RANGE_X = 800;

// Note: this value is inexact as the map is cut off at ~ +/- 83 degrees.
// However, the polar regions produce very little increase in Y range, so
// we will use the tile size.
const GALL_PETERS_RANGE_Y = 510;

num degreesToRadians(num deg) => deg * (Math.PI / 180);

num radiansToDegrees(num rad) => rad / (Math.PI / 180);

class GallPetersProjection extends Projection {

  // Using the base map tile, denote the lat/lon of the equatorial origin.
  final _worldOrigin =
      new Point(GALL_PETERS_RANGE_X * 400 / 800, GALL_PETERS_RANGE_Y / 2);

  // This projection has equidistant meridians, so each longitude degree is a linear
  // mapping.
  static const _worldCoordinatePerLonDegree = GALL_PETERS_RANGE_X / 360;

  // This constant merely reflects that latitudes vary from +90 to -90 degrees.
  static const _worldCoordinateLatRange = GALL_PETERS_RANGE_Y / 2;

  // TODO(aa) make a constructor with optionals
  GallPetersProjection() : super() {
    asJsObject(this)['fromLatLngToPoint'] = (JsObject latLng,
        [JsObject point]) => asJsObject(_fromLatLngToPoint(
            latLng == null ? null : new LatLng.created(latLng),
            point == null ? null : new Point.created(point)));
    asJsObject(this)['fromPointToLatLng'] = (JsObject point,
        [bool nowrap]) => asJsObject(_fromPointToLatLng(
            point == null ? null : new Point.created(point), nowrap));
  }

  Point _fromLatLngToPoint(LatLng latLng, [Point point]) {
    final origin = this._worldOrigin;
    final x = origin.x + _worldCoordinatePerLonDegree * latLng.lng;

    // Note that latitude is measured from the world coordinate origin
    // at the top left of the map.
    final latRadians = degreesToRadians(latLng.lat);
    final y = origin.y - _worldCoordinateLatRange * Math.sin(latRadians);

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
    final lng = (x - origin.x) / _worldCoordinatePerLonDegree;
    final latRadians = Math.asin((origin.y - y) / _worldCoordinateLatRange);
    final lat = radiansToDegrees(latRadians);
    return new LatLng(lat, lng, nowrap);
  }
}

void main() {
  final imageTypeOption = new ImageMapTypeOptions()
    ..tileSize = new Size(800, 512)
    // FIXME https://code.google.com/p/gmaps-api-issues/issues/detail?id=7909
    //..isPng = true
    ..minZoom = 0
    ..maxZoom = 1
    ..name = 'Gall-Peters';
  asJsObject(imageTypeOption)['getTileUrl'] = (JsObject coordJs, num zoom,
      [_]) {
    final coord = new Point.created(coordJs);
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
  };
  final gallPetersMapType = new ImageMapType(imageTypeOption);

  gallPetersMapType.projection = new GallPetersProjection();
  context['a'] = (asJsObject(new MapTypeControlOptions()
    ..mapTypeIds = [MapTypeId.ROADMAP, 'gallPetersMap']));
  final mapOptions = new MapOptions()
    ..zoom = 0
    ..center = new LatLng(0, 0)
    ..mapTypeControlOptions = (new MapTypeControlOptions()
      ..mapTypeIds = [MapTypeId.ROADMAP, 'gallPetersMap']);
  final gallPetersMap = new GMap(
      document.getElementById('map-canvas'), mapOptions)
    ..mapTypes.set('gallPetersMap', gallPetersMapType)
    ..mapTypeId = 'gallPetersMap';

  for (var i = 0; i < locationArray.length; i++) {
    new Marker(new MarkerOptions()
      ..position = locationArray[i]
      ..map = gallPetersMap
      ..title = locationNameArray[i]);
  }

  gallPetersMap.onClick.listen((e) {
    window.alert('Point.X.Y: ${e.latLng}');
  });
}
