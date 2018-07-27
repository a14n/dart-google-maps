import 'dart:html' hide Rectangle;
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = MapOptions()
    ..center = LatLng(44.5452, -78.5389)
    ..zoom = 9;
  final map = GMap(document.getElementById('map-canvas'), mapOptions);

  final bounds = LatLngBounds(LatLng(44.490, -78.649), LatLng(44.599, -78.443));

  Rectangle(RectangleOptions()
        ..bounds = bounds
        ..editable = true)
      .map = map;
}
