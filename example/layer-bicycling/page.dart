import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

void main() {
  final myLatlng = LatLng(42.3726399, -71.1096528);
  final mapOptions = MapOptions()
    ..zoom = 14
    ..center = myLatlng;
  final map =
      Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  BicyclingLayer().map = map;
}
