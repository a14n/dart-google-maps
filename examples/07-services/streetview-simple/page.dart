#import('dart:html');
#import('../../../gmaps.dart', prefix:'gmaps');

void main() {
  final fenway = new gmaps.LatLng(42.345573,-71.098326);
  final mapOptions = new gmaps.MapOptions()
    ..center = fenway
    ..zoom = 14
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ;
  final map = new gmaps.GMap(query('#map_canvas'), mapOptions);
  final panoramaOptions = new gmaps.StreetViewPanoramaOptions()
    ..position = fenway
    ..pov = (new gmaps.StreetViewPov()
      ..heading = 34
      ..pitch = 10
      ..zoom = 1
    )
    ;
  final panorama = new gmaps.StreetViewPanorama(query('#pano'),panoramaOptions);
  map.setStreetView(panorama);
}