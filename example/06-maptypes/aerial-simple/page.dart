#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  js.scoped(() {
    final mapOptions = new gmaps.MapOptions()
      ..center = new gmaps.LatLng(36.964645, -122.01523)
      ..zoom = 18
      ..mapTypeId = gmaps.MapTypeId.SATELLITE
      ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);
    map.setTilt(45);
  });
}
