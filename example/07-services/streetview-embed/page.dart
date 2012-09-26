#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  js.scoped(() {
    final bryantPark = new gmaps.LatLng(37.869260, -122.254811);
    final panoramaOptions = new gmaps.StreetViewPanoramaOptions()
      ..position = bryantPark
      ..pov = (new gmaps.StreetViewPov()
        ..heading = 165
        ..pitch = 0
        ..zoom = 1
      )
      ;
    final myPano = new gmaps.StreetViewPanorama(query('#pano'),panoramaOptions);
    myPano.setVisible(true);
  });
}