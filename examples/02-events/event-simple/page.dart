#import('dart:html');
#import('../../../gmaps.dart', prefix:'gmaps');

void main() {
  final mapOptions = new gmaps.MapOptions()
    ..zoom = 4
    ..center = new gmaps.LatLng(-25.363882, 131.044922)
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ;

  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  final marker = new gmaps.Marker(new gmaps.MarkerOptions()
    ..position = map.getCenter()
    ..map = map
    ..title = "Click to zoom"
  );

  gmaps.Events.addListener(map, 'center_changed', (e) {
    // 3 seconds after the center of the map has changed, pan back to the marker.
    window.setTimeout(() {
      map.panTo(marker.getPosition());
    }, 3000);
  });

  gmaps.Events.addListener(marker, 'click', (e) {
    map.setZoom(8);
    map.setCenter(marker.getPosition());
  });

}