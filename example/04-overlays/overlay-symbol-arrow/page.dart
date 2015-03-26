import 'dart:html';
import 'package:google_maps/google_maps.dart';

Polyline line;

void main() {
  final mapOptions = new MapOptions()
    ..center = new LatLng(20.291, 153.027)
    ..zoom = 6
    ..mapTypeId = MapTypeId.ROADMAP;
  final map = new GMap(querySelector("#map_canvas"), mapOptions);

  final lineCoordinates = [
    new LatLng(22.291, 153.027),
    new LatLng(18.291, 153.027)
  ];
  final lineSymbol = new GSymbol()..path = SymbolPath.FORWARD_CLOSED_ARROW;

  line = new Polyline(new PolylineOptions()
    ..path = lineCoordinates
    ..icons = [
      new IconSequence()
        ..icon = lineSymbol
        ..offset = '100%'
    ]
    ..map = map);
}
