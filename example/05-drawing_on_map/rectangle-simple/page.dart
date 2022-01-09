import 'dart:html' hide Rectangle;
import 'package:google_maps/google_maps.dart';

void main() {
  final map = GMap(
      document.getElementById('map-canvas') as HtmlElement,
      MapOptions()
        ..zoom = 11
        ..center = LatLng(33.678176, -116.242568)
        ..mapTypeId = MapTypeId.TERRAIN);

  Rectangle(RectangleOptions()
    ..strokeColor = '#FF0000'
    ..strokeOpacity = 0.8
    ..strokeWeight = 2
    ..fillColor = '#FF0000'
    ..fillOpacity = 0.35
    ..map = map
    ..bounds = LatLngBounds(
        LatLng(33.671068, -116.25128), LatLng(33.685282, -116.233942)));
}
