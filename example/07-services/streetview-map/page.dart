#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  js.scoped(() {
    final fenway = new gmaps.LatLng(42.345573,-71.098326);
    final mapOptions = new gmaps.MapOptions()
      ..center = fenway
      ..zoom = 14
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;
    final map = new gmaps.GMap(query('#map_canvas'), mapOptions);
  });
}