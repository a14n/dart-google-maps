#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  js.scoped(() {
    final myLatlng = new gmaps.LatLng(51.501904,-0.115871);
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 13
      ..center = myLatlng
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

    final transitLayer = new gmaps.TransitLayer();
    transitLayer.map = map;
  });
}
