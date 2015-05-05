import 'dart:html';
import 'package:google_maps/google_maps.dart';

const IMAGE_URL =
    "https://google-developers.appspot.com/maps/documentation/javascript/examples/full";

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 4
    ..center = new LatLng(-33, 151);
  final map = new GMap(document.getElementById('map-canvas'), mapOptions);

  final image = '${IMAGE_URL}/images/beachflag.png';
  final myLatLng = new LatLng(-33.890542, 151.274856);
  new Marker(new MarkerOptions()
    ..position = myLatLng
    ..map = map
    ..icon = image);
}
