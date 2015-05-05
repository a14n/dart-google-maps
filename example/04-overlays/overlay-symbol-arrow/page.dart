import 'dart:html';
import 'package:google_maps/google_maps.dart';

Polyline line;

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 6
    ..center = new LatLng(20.291, 153.027)
    ..mapTypeId = MapTypeId.TERRAIN;
  final map = new GMap(document.getElementById('map-canvas'), mapOptions);

  final lineSymbol = new GSymbol()..path = SymbolPath.FORWARD_CLOSED_ARROW;

  final lineCoordinates = <LatLng>[
    new LatLng(22.291, 153.027),
    new LatLng(18.291, 153.027)
  ];

  line = new Polyline(new PolylineOptions()
    ..path = lineCoordinates
    ..icons = <IconSequence>[
      new IconSequence()
        ..icon = lineSymbol
        ..offset = '100%'
    ]
    ..map = map);
}
