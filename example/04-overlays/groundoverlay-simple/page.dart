#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:google_maps/jswrap.dart', prefix:'jsw');
#import('package:google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  js.scoped(() {
    final newark = new gmaps.LatLng(40.740, -74.18);
    final imageBounds = new gmaps.LatLngBounds(
        new gmaps.LatLng(40.712216,-74.22655),
        new gmaps.LatLng(40.773941,-74.12544));

    final mapOptions = new gmaps.MapOptions()
      ..zoom = 13
      ..center = newark
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

    final oldmap = new gmaps.GroundOverlay(
        'https://www.lib.utexas.edu/maps/historical/newark_nj_1922.jpg',
        imageBounds);
    oldmap.map = map;
  });
}
