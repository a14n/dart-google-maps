import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart' hide Animation;

final LatLng stockholm = LatLng(59.32522, 18.07002);
final LatLng parliament = LatLng(59.327383, 18.06747);
late Marker marker;
late GMap map;

void main() {
  final mapOptions = MapOptions()
    ..zoom = 13
    ..center = stockholm;
  map = GMap(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  marker = Marker(MarkerOptions()
    ..map = map
    ..draggable = true
    ..animation = Animation.DROP
    ..position = parliament);
  marker.onClick.listen((e) => toggleBounce());
}

void toggleBounce() {
  if (marker.animation != null) {
    marker.animation = null;
  } else {
    marker.animation = Animation.BOUNCE;
  }
}
