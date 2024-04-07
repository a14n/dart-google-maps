import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

void main() {
  Map(
    document.getElementById('map') as HTMLElement,
    MapOptions()
      ..zoom = 8
      ..center = LatLng(35.717, 139.731),
  );
}
