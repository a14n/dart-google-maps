#import('dart:html');
#import('../../../gmaps.dart', prefix:'gmaps');

void main() {
  final mapOptions = new gmaps.MapOptions();
  mapOptions.zoom = 4;
  mapOptions.center = new gmaps.LatLng(-25.363882, 131.044922);
  mapOptions.mapTypeId = gmaps.MapTypeId.ROADMAP;
  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);
  
  final markerOptions = new gmaps.MarkerOptions();
  markerOptions.position = map.getCenter();
  markerOptions.map = map;
  markerOptions.title = "Click to zoom";
  final marker = new gmaps.Marker(markerOptions);

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