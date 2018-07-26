import 'dart:html';
import 'package:google_maps/google_maps.dart';

Polyline line;

void main() {
  final mapOptions = MapOptions()
    ..zoom = 6
    ..center = LatLng(20.291, 153.027)
    ..mapTypeId = MapTypeId.TERRAIN;
  final map = GMap(document.getElementById('map-canvas'), mapOptions);

  final lineSymbol = GSymbol()..path = SymbolPath.FORWARD_CLOSED_ARROW;

  final lineCoordinates = <LatLng>[
    LatLng(22.291, 153.027),
    LatLng(18.291, 153.027)
  ];

  line = Polyline(PolylineOptions()
    ..path = lineCoordinates
    ..icons = <IconSequence>[
      IconSequence()
        ..icon = lineSymbol
        ..offset = '100%'
    ]
    ..map = map);
}
