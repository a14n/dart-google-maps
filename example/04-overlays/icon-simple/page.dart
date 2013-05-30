import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/google_maps.dart';

const IMAGE_URL = "https://google-developers.appspot.com/maps/documentation/javascript/examples/full";

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 4
    ..center = new LatLng(-33, 151)
    ..mapTypeId = MapTypeId.ROADMAP
    ;
  final map = new GMap(query("#map_canvas"), mapOptions);

  final image = '${IMAGE_URL}/images/beachflag.png';
  final myLatLng = new LatLng(-33.890542, 151.274856);
  final beachMarker = new Marker(new MarkerOptions()
    ..position = myLatLng
    ..map = map
    ..icon = image
  );
}