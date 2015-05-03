import 'dart:html' hide Point;
import 'dart:math' as Math;

import 'package:google_maps/google_maps.dart';

GMap map;
const TILE_SIZE = 256;
final LatLng chicago = new LatLng(41.850033, -87.6500523);

num degreesToRadians(num deg) => deg * (Math.PI / 180);

num radiansToDegrees(num rad) => rad / (Math.PI / 180);

class MercatorProjection {
  final _pixelOrigin = new Point(TILE_SIZE / 2, TILE_SIZE / 2);
  static const _pixelsPerLonDegree = TILE_SIZE / 360;
  static const _pixelsPerLonRadian = TILE_SIZE / (2 * Math.PI);

  Point fromLatLngToPoint(LatLng latLng, [Point point]) {
    if (point == null) point = new Point(0, 0);
    final origin = _pixelOrigin;

    point.x = origin.x + latLng.lng * _pixelsPerLonDegree;

    // NOTE(appleton): Truncating to 0.9999 effectively limits latitude to
    // 89.189.  This is about a third of a tile past the edge of the world
    // tile.
    var siny = Math.sin(degreesToRadians(latLng.lat)).clamp(-0.9999, 0.9999);
    point.y = origin.y +
        0.5 * Math.log((1 + siny) / (1 - siny)) * -_pixelsPerLonRadian;
    return point;
  }

  LatLng fromPointToLatLng(Point point) {
    var me = this;
    var origin = me._pixelOrigin;
    var lng = (point.x - origin.x) / _pixelsPerLonDegree;
    var latRadians = (point.y - origin.y) / -_pixelsPerLonRadian;
    var lat =
        radiansToDegrees(2 * Math.atan(Math.exp(latRadians)) - Math.PI / 2);
    return new LatLng(lat, lng);
  }
}

String createInfoWindowContent() {
  final numTiles = 1 << map.zoom;
  final projection = new MercatorProjection();
  final worldCoordinate = projection.fromLatLngToPoint(chicago);
  final pixelCoordinate =
      new Point(worldCoordinate.x * numTiles, worldCoordinate.y * numTiles);
  final tileCoordinate = new Point((pixelCoordinate.x / TILE_SIZE).floor(),
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
  final mapOptions = new MapOptions()
    ..zoom = 0
    ..center = chicago;
  map = new GMap(document.getElementById("map-canvas"), mapOptions);

  final InfoWindow coordInfoWindow = new InfoWindow()
    ..content = createInfoWindowContent()
    ..position = chicago
    ..open(map);

  map.onZoomChanged.listen((_) {
    coordInfoWindow.content = createInfoWindowContent();
    coordInfoWindow.open(map);
  });
}
