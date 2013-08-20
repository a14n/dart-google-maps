import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 12
    ..center = new LatLng(-28.643387, 153.612224)
    ..mapTypeId = MapTypeId.ROADMAP
    ..mapTypeControl = true
    ..mapTypeControlOptions = (new MapTypeControlOptions()
      ..style = MapTypeControlStyle.HORIZONTAL_BAR
      ..position = ControlPosition.BOTTOM_CENTER
    )
    ..panControl = true
    ..panControlOptions = (new PanControlOptions()
      ..position = ControlPosition.TOP_RIGHT
    )
    ..zoomControl = true
    ..zoomControlOptions = (new ZoomControlOptions()
      ..style = ZoomControlStyle.LARGE
      ..position = ControlPosition.LEFT_CENTER
    )
    ..scaleControl = true
    ..scaleControlOptions = (new ScaleControlOptions()
      ..position = ControlPosition.TOP_LEFT
    )
    ..streetViewControl = true
    ..streetViewControlOptions = (new StreetViewControlOptions()
      ..position = ControlPosition.LEFT_TOP
    )
    ;

  final map = new GMap(query("#map_canvas"), mapOptions);
}
