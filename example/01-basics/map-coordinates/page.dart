import 'dart:html' hide Point;
import 'dart:math' as math;

import 'package:google_maps/google_maps.dart';

GMap map;
const TILE_SIZE = 256;
final LatLng chicago = LatLng(41.850033, -87.6500523);

num degreesToRadians(num deg) => deg * (math.pi / 180);

num radiansToDegrees(num rad) => rad / (math.pi / 180);

class MercatorProjection {
  final _pixelOrigin = Point(TILE_SIZE / 2, TILE_SIZE / 2);
  static const _pixelsPerLonDegree = TILE_SIZE / 360;
  static const _pixelsPerLonRadian = TILE_SIZE / (2 * math.pi);

  Point fromLatLngToPoint(LatLng latLng, [Point point]) {
    point ??= Point(0, 0);
    final origin = _pixelOrigin;

    point.x = origin.x + latLng.lng * _pixelsPerLonDegree;

    // NOTE(appleton): Truncating to 0.9999 effectively limits latitude to
    // 89.189.  This is about a third of a tile past the edge of the world
    // tile.
    final siny = math.sin(degreesToRadians(latLng.lat)).clamp(-0.9999, 0.9999);
    point.y = origin.y +
        0.5 * math.log((1 + siny) / (1 - siny)) * -_pixelsPerLonRadian;
    return point;
  }

  LatLng fromPointToLatLng(Point point) {
    final me = this;
    final origin = me._pixelOrigin;
    final lng = (point.x - origin.x) / _pixelsPerLonDegree;
    final latRadians = (point.y - origin.y) / -_pixelsPerLonRadian;
    final lat =
        radiansToDegrees(2 * math.atan(math.exp(latRadians)) - math.pi / 2);
    return LatLng(lat, lng);
  }
}

String createInfoWindowContent() {
  final numTiles = 1 << map.zoom;
  final projection = MercatorProjection();
  final worldCoordinate = projection.fromLatLngToPoint(chicago);
  final pixelCoordinate =
      Point(worldCoordinate.x * numTiles, worldCoordinate.y * numTiles);
  final tileCoordinate = Point((pixelCoordinate.x / TILE_SIZE).floor(),
      (pixelCoordinate.y / TILE_SIZE).floor());

  return [
    'Chicago, IL',
    'LatLng: ${chicago.lat} , ${chicago.lng}',
    'World Coordinate: ${worldCoordinate.x} , ${worldCoordinate.y}',
    'Pixel Coordinate: ${pixelCoordinate.x.floor()} , ${pixelCoordinate.y.floor()}',
    'Tile Coordinate: ${tileCoordinate.x} , ${tileCoordinate.y} at Zoom Level: ${map.zoom}'
  ].join('<br>');
}

void main() {
  final mapOptions = MapOptions()
    ..zoom = 0
    ..center = chicago;
  map = GMap(document.getElementById('map-canvas'), mapOptions);

  final coordInfoWindow = InfoWindow()
    ..content = createInfoWindowContent()
    ..position = chicago
    ..open(map);

  map.onZoomChanged.listen((_) {
    coordInfoWindow
      ..content = createInfoWindowContent()
      ..open(map);
  });
}
