#import('dart:html');
#import('../../../gmaps.dart', prefix:'gmaps');

void main() {
  final mapOptions = new gmaps.MapOptions()
    ..center = new gmaps.LatLng(36.964645, -122.01523)
    ..zoom = 18
    ..mapTypeId = gmaps.MapTypeId.SATELLITE
    ;
  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);
  map.setTilt(45);
}
