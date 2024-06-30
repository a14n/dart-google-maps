import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_drawing.dart';
import 'package:web/web.dart';

void main() {
  final mapOptions = MapOptions()
    ..center = LatLng(-34.397, 150.644)
    ..zoom = 8;
  final map =
      Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  DrawingManager(DrawingManagerOptions()
        ..drawingMode = OverlayType.MARKER
        ..drawingControl = true
        ..drawingControlOptions = (DrawingControlOptions()
          ..position = ControlPosition.TOP_CENTER
          ..drawingModes = [
            OverlayType.MARKER,
            OverlayType.CIRCLE,
            OverlayType.POLYGON,
            OverlayType.POLYLINE,
            OverlayType.RECTANGLE
          ])
        ..markerOptions = (MarkerOptions()
          ..icon =
              'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png'
                  .toJS)
        ..circleOptions = (CircleOptions()
          ..fillColor = '#ffff00'
          ..fillOpacity = 1
          ..strokeWeight = 5
          ..clickable = false
          ..editable = true
          ..zIndex = 1))
      .map = map;
}
