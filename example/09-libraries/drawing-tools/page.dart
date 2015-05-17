import 'dart:html';
import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_drawing.dart';

const IMAGE_URL =
    "https://google-developers.appspot.com/maps/documentation/javascript/examples/full";

void main() {
  final mapOptions = new MapOptions()
    ..center = new LatLng(-34.397, 150.644)
    ..zoom = 8;
  final map = new GMap(document.getElementById('map-canvas'), mapOptions);

  final drawingManager = new DrawingManager(new DrawingManagerOptions()
    ..drawingMode = OverlayType.MARKER
    ..drawingControl = true
    ..drawingControlOptions = (new DrawingControlOptions()
      ..position = ControlPosition.TOP_CENTER
      ..drawingModes = [
        OverlayType.MARKER,
        OverlayType.CIRCLE,
        OverlayType.POLYGON,
        OverlayType.POLYLINE,
        OverlayType.RECTANGLE
      ])
    ..markerOptions = (new MarkerOptions()
      ..icon = '${IMAGE_URL}/images/beachflag.png')
    ..circleOptions = (new CircleOptions()
      ..fillColor = '#ffff00'
      ..fillOpacity = 1
      ..strokeWeight = 5
      ..clickable = false
      ..editable = true
      ..zIndex = 1));
  drawingManager.map = map;
}
