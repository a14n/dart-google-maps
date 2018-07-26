import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = MapOptions()
    ..zoom = 12
    ..center = LatLng(-28.643387, 153.612224)
    ..mapTypeControl = true
    ..mapTypeControlOptions = (MapTypeControlOptions()
      ..style = MapTypeControlStyle.HORIZONTAL_BAR
      ..position = ControlPosition.BOTTOM_CENTER)
    ..zoomControl = true
    ..zoomControlOptions = (ZoomControlOptions()
      ..style = ZoomControlStyle.LARGE
      ..position = ControlPosition.LEFT_CENTER)
    ..scaleControl = true
    ..streetViewControl = true
    ..streetViewControlOptions =
        (StreetViewControlOptions()..position = ControlPosition.LEFT_TOP);

  GMap(document.getElementById("map-canvas"), mapOptions);
}
