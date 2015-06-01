import 'dart:html' hide Point;
import 'dart:math' as Math;

import 'package:google_maps/google_maps.dart';
import 'package:js_wrapping/js_wrapping.dart';

void main() {
  final moonTypeOptions = new ImageMapTypeOptions()
    ..tileSize = new Size(256, 256)
    ..maxZoom = 9
    ..minZoom = 0
    ..name = 'Moon';
  asJsObject(moonTypeOptions)
    ..['radius'] = 1738000
    ..['getTileUrl'] = (JsObject point, num zoomLevel, _) {
      final normalizedCoord =
          getNormalizedCoord(new Point.created(point), zoomLevel);
      if (normalizedCoord == null) return null;
      final bound = Math.pow(2, zoomLevel);
      return 'http://mw1.google.com/mw-planetary/lunar/lunarmaps_v1/clem_bw/${zoomLevel}/${normalizedCoord.x}/${bound - normalizedCoord.y - 1}.jpg';
    };

  final moonMapType = new ImageMapType(moonTypeOptions);

  final myLatlng = new LatLng(0, 0);
  final mapOptions = new MapOptions()
    ..center = myLatlng
    ..zoom = 1
    ..streetViewControl = false
    ..mapTypeControlOptions = (new MapTypeControlOptions()
      ..mapTypeIds = ['moon']);

  final map = new GMap(document.getElementById('map-canvas'), mapOptions);
  map.mapTypes.set('moon', moonMapType);
  map.mapTypeId = 'moon';
}

// Normalizes the coords that tiles repeat across the x axis (horizontally)
// like the standard Google map tiles.
Point getNormalizedCoord(Point coord, num zoom) {
  final y = coord.y;
  var x = coord.x;

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

  return new Point(x, y);
}
