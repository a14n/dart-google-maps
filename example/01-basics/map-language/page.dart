#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  js.scoped((){
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 8
      ..center = new gmaps.LatLng(-34.397, 150.644)
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);
  });
}