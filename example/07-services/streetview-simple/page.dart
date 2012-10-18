#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  js.scoped(() {
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
    map.streetView = panorama;
  });
}