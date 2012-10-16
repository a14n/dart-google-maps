#import('dart:html');
#import('dart:math', prefix:'Math');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

final moonTypeOptions = jsw.retain(new gmaps.ImageMapTypeOptions()
  ..tileSize = new gmaps.Size(256, 256)
  ..maxZoom = 9
  ..minZoom = 0
  // TODO undocumented
  ..$.radius = 1738000
  ..name = 'Moon'
  ..getTileUrl = (gmaps.Point point, num zoomLevel) {
    final normalizedCoord = getNormalizedCoord(point, zoomLevel);
    if (normalizedCoord === null) {
      return null;
    }
    final bound = Math.pow(2, zoomLevel);
    return 'http://mw1.google.com/mw-planetary/lunar/lunarmaps_v1/clem_bw/${zoomLevel}/${normalizedCoord.x}/${bound - normalizedCoord.y - 1}.jpg';
  }
  );

final moonMapType = new gmaps.ImageMapType(moonTypeOptions);

void main() {
  js.scoped(() {
    final myLatlng = new gmaps.LatLng(0, 0);
    final mapOptions = new gmaps.MapOptions()
      ..center = myLatlng
      ..zoom = 1
      ..streetViewControl = false
      ..mapTypeControlOptions = (new gmaps.MapTypeControlOptions()
        ..mapTypeIds = ['moon']
      )
      ;

    final map = new gmaps.GMap(query('#map_canvas'), mapOptions);
    map.mapTypes.set('moon', moonMapType);
    map.setMapTypeId('moon');
  });
}

// Normalizes the coords that tiles repeat across the x axis (horizontally)
// like the standard Google map tiles.
gmaps.Point getNormalizedCoord(gmaps.Point coord, num zoom) {
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

  return new gmaps.Point(x, y);
}