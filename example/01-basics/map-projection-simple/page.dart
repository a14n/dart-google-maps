import 'dart:html' hide Point;
import 'dart:math' as math;

import 'package:google_maps/google_maps.dart';
import 'package:js_wrapping/js_wrapping.dart';

const IMAGE_URL =
    'https://google-developers.appspot.com/maps/documentation/javascript/examples/full';

final chicago = LatLng(41.850033, -87.6500523);
final anchorage = LatLng(61.2180556, -149.9002778);
final mexico = LatLng(19.4270499, -99.1275711);
final equator = LatLng(0, 0);
final london = LatLng(51.5001524, -0.1262362);
final johannesburg = LatLng(-26.201452, 28.045488);
final kinshasa = LatLng(-4.325, 15.322222);
final sydney = LatLng(-33.867139, 151.207114);

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

num degreesToRadians(num deg) => deg * (math.pi / 180);

num radiansToDegrees(num rad) => rad / (math.pi / 180);

class GallPetersProjection extends Projection {
  // TODO(aa) make a constructor with optionals
  GallPetersProjection() : super() {
    asJsObject(this)['fromLatLngToPoint'] =
        (JsObject latLng, [JsObject point]) => asJsObject(_fromLatLngToPoint(
            latLng == null ? null : LatLng.created(latLng),
            point == null ? null : Point.created(point)));
    asJsObject(this)['fromPointToLatLng'] = (JsObject point, [bool nowrap]) =>
        asJsObject(_fromPointToLatLng(
            point == null ? null : Point.created(point), nowrap));
  }

  // Using the base map tile, denote the lat/lon of the equatorial origin.
  final _worldOrigin =
      Point(GALL_PETERS_RANGE_X * 400 / 800, GALL_PETERS_RANGE_Y / 2);

  // This projection has equidistant meridians, so each longitude degree is a linear
  // mapping.
  static const _worldCoordinatePerLonDegree = GALL_PETERS_RANGE_X / 360;

  // This constant merely reflects that latitudes vary from +90 to -90 degrees.
  static const _worldCoordinateLatRange = GALL_PETERS_RANGE_Y / 2;

  Point _fromLatLngToPoint(LatLng latLng, [Point point]) {
    final origin = _worldOrigin;
    final x = origin.x + _worldCoordinatePerLonDegree * latLng.lng;

    // Note that latitude is measured from the world coordinate origin
    // at the top left of the map.
    final latRadians = degreesToRadians(latLng.lat);
    final y = origin.y - _worldCoordinateLatRange * math.sin(latRadians);

    return Point(x, y);
  }

  LatLng _fromPointToLatLng(Point point, [bool nowrap]) {
    var y = point.y;
    final x = point.x;

    if (y < 0) {
      y = 0;
    }
    if (y >= GALL_PETERS_RANGE_Y) {
      y = GALL_PETERS_RANGE_Y;
    }

    final origin = _worldOrigin;
    final lng = (x - origin.x) / _worldCoordinatePerLonDegree;
    final latRadians = math.asin((origin.y - y) / _worldCoordinateLatRange);
    final lat = radiansToDegrees(latRadians);
    return LatLng(lat, lng, nowrap);
  }
}

void main() {
  final imageTypeOption = ImageMapTypeOptions()
    ..tileSize = Size(800, 512)
    // FIXME https://code.google.com/p/gmaps-api-issues/issues/detail?id=7909
    //..isPng = true
    ..minZoom = 0
    ..maxZoom = 1
    ..name = 'Gall-Peters';
  asJsObject(imageTypeOption)['getTileUrl'] =
      (JsObject coordJs, int zoom, [_]) {
    final coord = Point.created(coordJs);
    final numTiles = 1 << zoom;

    // Don't wrap tiles vertically.
    if (coord.y < 0 || coord.y >= numTiles) {
      return null;
    }

    // Wrap tiles horizontally.
    final x = ((coord.x % numTiles) + numTiles) % numTiles;

    // For simplicity, we use a tileset consisting of 1 tile at zoom level 0
    // and 4 tiles at zoom level 1. Note that we set the base URL to a relative
    // directory.
    return '$IMAGE_URL/images/gall-peters_${zoom}_${x}_${coord.y}.png';
  };
  final gallPetersMapType = ImageMapType(imageTypeOption)
    ..projection = GallPetersProjection();
  context['a'] = asJsObject(MapTypeControlOptions()
    ..mapTypeIds = [MapTypeId.ROADMAP, 'gallPetersMap']);
  final mapOptions = MapOptions()
    ..zoom = 0
    ..center = LatLng(0, 0)
    ..mapTypeControlOptions = (MapTypeControlOptions()
      ..mapTypeIds = [MapTypeId.ROADMAP, 'gallPetersMap']);
  final gallPetersMap = GMap(document.getElementById('map-canvas'), mapOptions)
    ..mapTypes.set('gallPetersMap', gallPetersMapType)
    ..mapTypeId = 'gallPetersMap';

  for (var i = 0; i < locationArray.length; i++) {
    Marker(MarkerOptions()
      ..position = locationArray[i]
      ..map = gallPetersMap
      ..title = locationNameArray[i]);
  }

  gallPetersMap.onClick.listen((e) {
    window.alert('Point.X.Y: ${e.latLng}');
  });
}
