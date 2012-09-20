#import('dart:html');
#import('dart:math');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  final mapOptions = new gmaps.MapOptions()
    ..zoom = 4
    ..center = new gmaps.LatLng(-33, 151)
    ..panControl = false
    ..zoomControl = false
    ..scaleControl = true
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
  ;
  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);
}
