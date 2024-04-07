import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

void main() {
  final mapOptions = MapOptions()
    ..center = LatLng(44.5452, -78.5389)
    ..zoom = 9;
  final map =
      Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  final bounds = LatLngBounds(LatLng(44.490, -78.649), LatLng(44.599, -78.443));

  Rectangle(RectangleOptions()
        ..bounds = bounds
        ..editable = true)
      .map = map;
}
