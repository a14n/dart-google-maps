import 'dart:html' hide Rectangle;
import 'package:google_maps/google_maps.dart';

void main() {
  final map = new GMap(document.getElementById('map-canvas'), new MapOptions()
    ..zoom = 11
    ..center = new LatLng(33.678176, -116.242568)
    ..mapTypeId = MapTypeId.TERRAIN);

  new Rectangle(new RectangleOptions()
    ..strokeColor = '#FF0000'
    ..strokeOpacity = 0.8
    ..strokeWeight = 2
    ..fillColor = '#FF0000'
    ..fillOpacity = 0.35
    ..map = map
    ..bounds = new LatLngBounds(
        new LatLng(33.671068, -116.25128), new LatLng(33.685282, -116.233942)));
}
