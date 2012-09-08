#import('dart:html');
#import('../../../gmaps.dart', prefix:'gmaps');

void main() {
  final mapOptions = new gmaps.MapOptions()
    ..zoom = 8
    ..center = new gmaps.LatLng(-34.397, 150.644)
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ;
  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);
}