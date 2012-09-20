#import('dart:html');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  final fenway = new gmaps.LatLng(42.345573,-71.098326);
  final mapOptions = new gmaps.MapOptions()
    ..center = fenway
    ..zoom = 14
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ;
  final map = new gmaps.GMap(query('#map_canvas'), mapOptions);
}