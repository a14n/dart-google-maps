#import('dart:html');
#import('../../../lib/gmaps.dart', prefix:'gmaps');

gmaps.GMap map;

void main() {
  final mapOptions = new gmaps.MapOptions()
    ..zoom = 6
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ;
  map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  // Try HTML5 geolocation
  if (window.navigator.geolocation !== null) {
    window.navigator.geolocation.getCurrentPosition((position) {
      final pos = new gmaps.LatLng(position.coords.latitude,
          position.coords.longitude);

      final infowindow = new gmaps.InfoWindow(new gmaps.InfoWindowOptions()
        ..position = pos
        ..content = 'Location found using HTML5.'
      );
      infowindow.open(map);

      map.setCenter(pos);
    }, (error) {
      handleNoGeolocation(true);
    });
  } else {
    // Browser doesn't support Geolocation
    handleNoGeolocation(false);
  }
}

void handleNoGeolocation(bool errorFlag) {
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
}