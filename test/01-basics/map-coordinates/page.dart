#import('dart:html');
#import('dart:math', prefix:'Math');
#import('../../../gmaps.dart', prefix:'gmaps');

const TILE_SIZE = 256;

gmaps.GMap map;
gmaps.LatLng chicago;

num bound(num value, num opt_min, num opt_max) {
  if (opt_min != null) value = Math.max(value, opt_min);
  if (opt_max != null) value = Math.min(value, opt_max);
  return value;
}

num degreesToRadians(num deg) {
  return deg * (Math.PI / 180);
}

num radiansToDegrees(num rad) {
  return rad / (Math.PI / 180);
}

class MercatorProjection {
  gmaps.Point _pixelOrigin = new gmaps.Point(TILE_SIZE / 2, TILE_SIZE / 2);
  num _pixelsPerLonDegree = TILE_SIZE / 360;
  num _pixelsPerLonRadian = TILE_SIZE / (2 * Math.PI);

  gmaps.Point fromLatLngToPoint(gmaps.LatLng latLng, [gmaps.Point opt_point]) {
    final point = opt_point === null ? new gmaps.Point(0, 0) : opt_point;
    final origin = _pixelOrigin;
  
    point.x = origin.x + latLng.lng() * _pixelsPerLonDegree;
  
    // NOTE(appleton): Truncating to 0.9999 effectively limits latitude to
    // 89.189.  This is about a third of a tile past the edge of the world
    // tile.
    var siny = bound(Math.sin(degreesToRadians(latLng.lat())), -0.9999,
        0.9999);
    point.y = origin.y + 0.5 * Math.log((1 + siny) / (1 - siny)) *
        -_pixelsPerLonRadian;
    return point;
  }

  gmaps.LatLng fromPointToLatLng(gmaps.Point point) {
    var me = this;
    var origin = me._pixelOrigin;
    var lng = (point.x - origin.x) / me._pixelsPerLonDegree;
    var latRadians = (point.y - origin.y) / -me._pixelsPerLonRadian;
    var lat = radiansToDegrees(2 * Math.atan(Math.exp(latRadians)) -
        Math.PI / 2);
    return new gmaps.LatLng(lat, lng);
  }
}

String createInfoWindowContent() {
  final numTiles = 1 << map.getZoom();
  final projection = new MercatorProjection();
  final worldCoordinate = projection.fromLatLngToPoint(chicago);
  final pixelCoordinate = new gmaps.Point(
      worldCoordinate.x * numTiles,
      worldCoordinate.y * numTiles);
  final tileCoordinate = new gmaps.Point(
      (pixelCoordinate.x / TILE_SIZE).floor(),
      (pixelCoordinate.y / TILE_SIZE).floor());

  return Strings.join([
    'Chicago, IL',
    'LatLng: ${chicago.lat()} , ${chicago.lng()}',
    'World Coordinate: ${worldCoordinate.x} , ${worldCoordinate.y}',
    'Pixel Coordinate: ${pixelCoordinate.x.floor()} , ${pixelCoordinate.y.floor()}',
    'Tile Coordinate: ${tileCoordinate.x} , ${tileCoordinate.y} at Zoom Level: ${map.getZoom()}'
  ], '<br>');
}

void main() {
  chicago = new gmaps.LatLng(41.850033,-87.6500523);

  final mapOptions = new gmaps.MapOptions()
    ..zoom = 0
    ..center = chicago
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ;
  map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  final coordInfoWindow = new gmaps.InfoWindow()
    ..setContent(createInfoWindowContent())
    ..setPosition(chicago)
    ..open(map)
    ;

  gmaps.Events.addListener(map, 'zoom_changed', (e) {
    coordInfoWindow.setContent(createInfoWindowContent());
    coordInfoWindow.open(map);
  });
}