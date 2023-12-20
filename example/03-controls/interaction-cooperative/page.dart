import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

void main() {
  GMap(
    document.getElementById('map') as HTMLElement,
    MapOptions()
      ..zoom = 4
      ..center = LatLng(-25.363, 131.044)
      ..gestureHandling = 'cooperative',
  );
}
