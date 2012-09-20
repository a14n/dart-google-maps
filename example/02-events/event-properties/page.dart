#import('dart:html');
#import('dart:math');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  var myLatLng = new gmaps.LatLng(-25.363882, 131.044922);
  final mapOptions = new gmaps.MapOptions()
    ..zoom = 4
    ..center = myLatLng
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
  ;

  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  final infowindow = new gmaps.InfoWindow(new gmaps.InfoWindowOptions()
    ..content = "Change the zoom level"
    ..position = myLatLng
  );
  infowindow.open(map);

  gmaps.Events.addListener(map, 'zoom_changed', (e) {
    var zoomLevel = map.getZoom();
    map.setCenter(myLatLng);
    infowindow.setContent("Zoom: $zoomLevel");
  });
}