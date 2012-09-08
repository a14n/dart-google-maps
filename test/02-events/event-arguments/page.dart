#import('dart:html');
#import('../../../gmaps.dart', prefix:'gmaps');

void main() {
  final mapOptions = new gmaps.MapOptions()
    ..zoom = 4
    ..center = new gmaps.LatLng(-25.363882,131.044922)
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
  ;
  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  gmaps.Events.addListener(map, 'click', (e) {
    final me = new gmaps.MouseEvent.wrap(e);
    placeMarker(me.latLng, map);
  });
}

void placeMarker(gmaps.LatLng position, gmaps.GMap map) {
  var marker = new gmaps.Marker(new gmaps.MarkerOptions()
    ..position = position
    ..map = map
  );

  map.panTo(position);
}