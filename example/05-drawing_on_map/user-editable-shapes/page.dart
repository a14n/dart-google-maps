import 'dart:html' hide Rectangle;
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = new MapOptions()
    ..center = new LatLng(44.5452, -78.5389)
    ..zoom = 9;
  final map = new GMap(document.getElementById('map-canvas'), mapOptions);

  final bounds = new LatLngBounds(
      new LatLng(44.490, -78.649), new LatLng(44.599, -78.443));

  final rectangle = new Rectangle(new RectangleOptions()
    ..bounds = bounds
    ..editable = true);

  rectangle.map = map;
}
