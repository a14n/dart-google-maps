#import('dart:html');
#import('../../../gmaps.dart', prefix:'gmaps');

void main() {
  final myLatlng = new gmaps.LatLng(-25.363882,131.044922);
  final mapOptions = new gmaps.MapOptions();
  mapOptions.zoom = 4;
  mapOptions.center = myLatlng;
  mapOptions.mapTypeId = gmaps.MapTypeId.ROADMAP;
  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  final markerOptions = new gmaps.MarkerOptions();
  markerOptions.position = myLatlng;
  markerOptions.map = map;
  markerOptions.title = "Hello World!";
  final marker = new gmaps.Marker(markerOptions);
}