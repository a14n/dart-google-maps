import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

late Polyline line;

void main() {
  final mapOptions = MapOptions()
    ..zoom = 6
    ..center = LatLng(20.291, 153.027)
    ..mapTypeId = MapTypeId.TERRAIN;
  final map =
      Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  final lineSymbol = Symbol()..path = SymbolPath.FORWARD_CLOSED_ARROW;

  final lineCoordinates = <LatLng>[
    LatLng(22.291, 153.027),
    LatLng(18.291, 153.027)
  ];

  line = Polyline(PolylineOptions()
    ..path = lineCoordinates.toJS
    ..icons = <IconSequence>[
      IconSequence()
        ..icon = lineSymbol
        ..offset = '100%'
    ].toJS
    ..map = map);
}
