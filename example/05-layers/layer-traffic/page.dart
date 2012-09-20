#import('dart:html');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  final myLatlng = new gmaps.LatLng(34.04924594193164, -118.24104309082031);
  final mapOptions = new gmaps.MapOptions()
    ..zoom = 13
    ..center = myLatlng
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ;
  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  final trafficLayer = new gmaps.TrafficLayer();
  trafficLayer.setMap(map);
}
