import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 12
    ..center = new LatLng(-28.643387, 153.612224)
    ..mapTypeControl = true
    ..mapTypeControlOptions = (new MapTypeControlOptions()
      ..style = MapTypeControlStyle.HORIZONTAL_BAR
      ..position = ControlPosition.BOTTOM_CENTER)
    ..zoomControl = true
    ..zoomControlOptions = (new ZoomControlOptions()
      ..style = ZoomControlStyle.LARGE
      ..position = ControlPosition.LEFT_CENTER)
    ..scaleControl = true
    ..streetViewControl = true
    ..streetViewControlOptions = (new StreetViewControlOptions()
      ..position = ControlPosition.LEFT_TOP);

  new GMap(document.getElementById("map-canvas"), mapOptions);
}
