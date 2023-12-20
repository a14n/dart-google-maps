import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

void main() {
  final myLatlng = LatLng(49.496675, -102.65625);
  final mapOptions = MapOptions()
    ..zoom = 4
    ..center = myLatlng;
  final map =
      GMap(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  KmlLayer()
    ..url =
        'http://api.flickr.com/services/feeds/geo/?g=322338@N20&lang=en-us&format=feed-georss'
    ..map = map;
}
