import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

void main() {
  GMap(
    document.getElementById('map') as HTMLElement,
    MapOptions()
      ..zoom = 4
      ..center = LatLng(-33, 151)
      ..zoomControl = false
      ..scaleControl = true,
  );
}
