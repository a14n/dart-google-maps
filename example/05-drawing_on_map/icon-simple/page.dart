import 'dart:html';
import 'package:google_maps/google_maps.dart';

const IMAGE_URL =
    'https://google-developers.appspot.com/maps/documentation/javascript/examples/full';

void main() {
  final mapOptions = MapOptions()
    ..zoom = 4
    ..center = LatLng(-33, 151);
  final map =
      GMap(document.getElementById('map-canvas') as HtmlElement, mapOptions);

  const image = '$IMAGE_URL/images/beachflag.png';
  final myLatLng = LatLng(-33.890542, 151.274856);
  Marker(MarkerOptions()
    ..position = myLatLng
    ..map = map
    ..icon = image);
}
