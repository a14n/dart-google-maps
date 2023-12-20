import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

void main() {
  GMap(
    document.getElementById('map') as HTMLElement,
    MapOptions()
      ..center = LatLng(-34.397, 150.644)
      ..zoom = 8,
  );
}
