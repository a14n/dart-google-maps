#import('dart:html');
#import('dart:math');
#import('../../../gmaps.dart', prefix:'gmaps');

void main() {
  var myLatLng = new gmaps.LatLng(-25.363882, 131.044922);
  final mapOptions = new gmaps.MapOptions();
  mapOptions.zoom = 4;
  mapOptions.center = myLatLng;
  mapOptions.mapTypeId = gmaps.MapTypeId.ROADMAP;

  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  final infowindowOptions = new gmaps.InfoWindowOptions();
  infowindowOptions.content = "Change the zoom level";
  infowindowOptions.position = myLatLng;
  final infowindow = new gmaps.InfoWindow(infowindowOptions);
  infowindow.open(map);
  gmaps.Events.addListener(map, 'zoom_changed', (e) {
    var zoomLevel = map.getZoom();
    map.setCenter(myLatLng);
    infowindow.setContent("Zoom: $zoomLevel");
  });
}