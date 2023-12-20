import 'dart:math' as math;

import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

void main() {
  final moonTypeOptions = ImageMapTypeOptions()
    ..tileSize = Size(256, 256)
    ..maxZoom = 9
    ..minZoom = 0
    ..name = 'Moon'
    ..getTileUrl = (point, zoomLevel) {
      final normalizedCoord = getNormalizedCoord(point!, zoomLevel!.toInt());
      if (normalizedCoord == null) return null;
      final bound = math.pow(2, zoomLevel);
      return '//mw1.google.com/mw-planetary/lunar/lunarmaps_v1/clem_bw/$zoomLevel/${normalizedCoord.x}/${bound - normalizedCoord.y! - 1}.jpg';
    };

  final moonMapType = ImageMapType(moonTypeOptions)..radius = 1738000;

  final myLatlng = LatLng(0, 0);
  final mapOptions = MapOptions()
    ..center = myLatlng
    ..zoom = 1
    ..streetViewControl = false
    ..mapTypeControlOptions = (MapTypeControlOptions()..mapTypeIds = ['moon']);

  final map =
      GMap(document.getElementById('map-canvas') as HTMLElement, mapOptions);
  map.mapTypes!.set('moon', moonMapType);
  map.mapTypeId = 'moon';
}

// Normalizes the coords that tiles repeat across the x axis (horizontally)
// like the standard Google map tiles.
Point? getNormalizedCoord(Point coord, int zoom) {
  final y = coord.y!;
  var x = coord.x!;

  // tile range in one direction range is dependent on zoom level
  // 0 = 1 tile, 1 = 2 tiles, 2 = 4 tiles, 3 = 8 tiles, etc
  final tileRange = 1 << zoom;

  // don't repeat across y-axis (vertically)
  if (y < 0 || y >= tileRange) {
    return null;
  }

  // repeat across x-axis
  if (x < 0 || x >= tileRange) {
    x = (x % tileRange + tileRange) % tileRange;
  }

  return Point(x, y);
}
