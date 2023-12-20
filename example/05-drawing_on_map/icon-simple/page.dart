import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

void main() {
  final mapOptions = MapOptions()
    ..zoom = 4
    ..center = LatLng(-33, 151);
  final map =
      GMap(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  const image =
      'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png';
  final myLatLng = LatLng(-33.890542, 151.274856);
  Marker(MarkerOptions()
    ..position = myLatLng
    ..map = map
    ..icon = image);
}
