#import('dart:html');
#import('../../../gmaps.dart', prefix:'gmaps');

void main() {
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
}