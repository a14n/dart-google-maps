#import('dart:html');
#import('dart:math');
#import('../../../lib/gmaps.dart', prefix:'gmaps');

void main() {
  final mapOptions = new gmaps.MapOptions()
    ..zoom = 4
    ..center = new gmaps.LatLng(-33, 151)
    ..disableDefaultUI = true
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
  ;

  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);
}
