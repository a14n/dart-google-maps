import 'dart:html' hide Point;
import 'dart:math' as Math;
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart';

final moonTypeOptions = jsw.retain(new ImageMapTypeOptions()
  ..tileSize = new Size(256, 256)
  ..maxZoom = 9
  ..minZoom = 0
  // TODO undocumented
  ..$.radius = 1738000
  ..name = 'Moon'
  ..getTileUrl = (Point point, num zoomLevel) {
    final normalizedCoord = getNormalizedCoord(point, zoomLevel);
    if (normalizedCoord === null) {
      return null;
    }
    final bound = Math.pow(2, zoomLevel);
    return 'http://mw1.google.com/mw-planetary/lunar/lunarmaps_v1/clem_bw/${zoomLevel}/${normalizedCoord.x}/${bound - normalizedCoord.y - 1}.jpg';
  }
  );

final moonMapType = new ImageMapType(moonTypeOptions);

void main() {
  js.scoped(() {
    final myLatlng = new LatLng(0, 0);
    final mapOptions = new MapOptions()
      ..center = myLatlng
      ..zoom = 1
      ..streetViewControl = false
      ..mapTypeControlOptions = (new MapTypeControlOptions()
        ..mapTypeIds = ['moon']
      )
      ;

    final map = new GMap(query('#map_canvas'), mapOptions);
    map.mapTypes.set('moon', moonMapType);
    map.mapTypeId = 'moon';
  });
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