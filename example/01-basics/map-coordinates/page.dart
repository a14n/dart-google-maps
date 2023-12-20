import 'dart:math' as math;

import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

void main() {
  final chicago = LatLng(41.85, -87.65);
  final map = GMap(
    document.getElementById('map') as HTMLElement,
    MapOptions()
      ..center = chicago
      ..zoom = 3,
  );

  final coordInfoWindow = InfoWindow()
    ..content = createInfoWindowContent(chicago, map.zoom!)
    ..position = chicago
    ..open(map);

  map.onZoomChanged.listen((_) {
    coordInfoWindow
      ..content = createInfoWindowContent(chicago, map.zoom!)
      ..open(map);
  });
}

const TILE_SIZE = 256;

String createInfoWindowContent(LatLng latLng, num zoom) {
  final numTiles = 1 << zoom.toInt();
  final worldCoordinate = project(latLng);
  final pixelCoordinate = Point(
    worldCoordinate.x! * numTiles,
    worldCoordinate.y! * numTiles,
  );
  final tileCoordinate = Point(
    (pixelCoordinate.x! / TILE_SIZE).floor(),
    (pixelCoordinate.y! / TILE_SIZE).floor(),
  );

  return [
    'Chicago, IL',
    'LatLng: $latLng',
    'World Coordinate: $worldCoordinate',
    'Pixel Coordinate: $pixelCoordinate',
    'Tile Coordinate: $tileCoordinate',
  ].join('<br>');
}

// The mapping between latitude, longitude and pixels is defined by the web
// mercator projection.
Point project(LatLng latLng) {
  var siny = math.sin((latLng.lat * math.pi) / 180);
  // Truncating to 0.9999 effectively limits latitude to 89.189. This is
  // about a third of a tile past the edge of the world tile.
  siny = math.min(math.max(siny, -0.9999), 0.9999);
  return Point(TILE_SIZE * (0.5 + latLng.lng / 360),
      TILE_SIZE * (0.5 - math.log((1 + siny) / (1 - siny)) / (4 * math.pi)));
}
