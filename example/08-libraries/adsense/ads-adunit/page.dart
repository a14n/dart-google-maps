#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');
#import('package:dart_google_maps/gmaps-adsense.dart', prefix:'gmaps_ads');

void main() {
  js.scoped(() {
    final mapOptions = new gmaps.MapOptions()
      ..center = new gmaps.LatLng(36.5987, -121.8950)
      ..zoom = 12
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);


    final adUnitDiv = new DivElement();

    // Note: replace the publisher ID noted here with your own
    // publisher ID.
    final adUnitOptions = new gmaps_ads.AdUnitOptions()
      ..format = gmaps_ads.AdFormat.HALF_BANNER
      ..position = gmaps.ControlPosition.TOP_CENTER
      ..publisherId = 'ca-google-maps_apidocs'
      ..map = map
      ..$.visible = true
      ;
    final adUnit = new gmaps_ads.AdUnit(adUnitDiv, adUnitOptions);
  });
}