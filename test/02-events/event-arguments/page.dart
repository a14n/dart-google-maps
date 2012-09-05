#import('dart:html');
#import('../../../gmaps.dart', prefix:'gmaps');

void main() {
  final mapOptions = new gmaps.MapOptions();
  mapOptions.zoom = 4;
  mapOptions.center = new gmaps.LatLng(-25.363882,131.044922);
  mapOptions.mapTypeId = gmaps.MapTypeId.ROADMAP;
  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  gmaps.Events.addListener(map, 'click', (e) {
    final me = new gmaps.MouseEvent.wrap(e);
    placeMarker(me.latLng, map);
  });
}

void placeMarker(gmaps.LatLng location, gmaps.GMap map) {
  final markerOptions = new gmaps.MarkerOptions();
  markerOptions.position = location;
  markerOptions.map = map;
  var marker = new gmaps.Marker(markerOptions);

  map.setCenter(location);
}