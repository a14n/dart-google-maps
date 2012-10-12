#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

gmaps.GMap map;

void main() {
  js.scoped(() {
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 6
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;
    map = jsw.retain(new gmaps.GMap(query("#map_canvas"), mapOptions));

    // Try HTML5 geolocation
    if (window.navigator.geolocation !== null) {
      window.navigator.geolocation.getCurrentPosition((position) {
        js.scoped(() {
          final pos = new gmaps.LatLng(position.coords.latitude,
              position.coords.longitude);

          final infowindow = new gmaps.InfoWindow(new gmaps.InfoWindowOptions()
            ..position = pos
            ..content = 'Location found using HTML5.'
          );
          infowindow.open(map);

          map.setCenter(pos);
        });
      }, (error) {
        handleNoGeolocation(true);
      });
    } else {
      // Browser doesn't support Geolocation
      handleNoGeolocation(false);
    }
  });
}

void handleNoGeolocation(bool errorFlag) {
  js.scoped((){
    String content;
    if (errorFlag) {
      content = 'Error: The Geolocation service failed.';
    } else {
      content = 'Error: Your browser doesn\'t support geolocation.';
    }

    final options = new gmaps.InfoWindowOptions()
      ..position = new gmaps.LatLng(60, 105)
      ..content = content
      ;

    final infowindow = new gmaps.InfoWindow(options);
    infowindow.open(map);
    map.setCenter(options.position);
  });
}