#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  js.scoped(() {
    final fenway = new gmaps.LatLng(42.345573,-71.098326);

    // Note: constructed panorama objects have visible: true
    // set by default.
    final panoramaOptions = new gmaps.StreetViewPanoramaOptions()
      ..position = fenway
      ..addressControlOptions = (new gmaps.StreetViewAddressControlOptions()
        ..position = gmaps.ControlPosition.BOTTOM_CENTER
      )
      ..linksControl = false
      ..panControl = false
      ..zoomControlOptions = (new gmaps.ZoomControlOptions()
        ..style = gmaps.ZoomControlStyle.SMALL
      )
      ..enableCloseButton = false
      ;
    final panorama = new gmaps.StreetViewPanorama(query('#pano'),panoramaOptions);
  });
}