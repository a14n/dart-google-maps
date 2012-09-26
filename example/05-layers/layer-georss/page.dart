#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  js.scoped(() {
    final myLatlng = new gmaps.LatLng(49.496675,-102.65625);
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 4
      ..center = myLatlng
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

    final georssLayer = new gmaps.KmlLayer('http://api.flickr.com/services/feeds/geo/?g=322338@N20&lang=en-us&format=feed-georss');
    georssLayer.setMap(map);
  });
}
