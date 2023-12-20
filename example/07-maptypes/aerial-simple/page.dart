import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

void main() {
  final mapOptions = MapOptions()
    ..center = LatLng(36.964645, -122.01523)
    ..zoom = 18
    ..mapTypeId = MapTypeId.SATELLITE;
  GMap(document.getElementById('map-canvas') as HTMLElement, mapOptions).tilt =
      45;
}
