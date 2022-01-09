import 'dart:async';
import 'dart:html';

import 'package:google_maps/google_maps.dart';

late Polyline line;

void main() {
  final mapOptions = MapOptions()
    ..center = LatLng(20.291, 153.027)
    ..zoom = 6
    ..mapTypeId = MapTypeId.TERRAIN;
  final map =
      GMap(document.getElementById('map-canvas') as HtmlElement, mapOptions);

  final lineCoordinates = <LatLng>[
    LatLng(22.291, 153.027),
    LatLng(18.291, 153.027)
  ];
  final lineSymbol = GSymbol()
    ..path = SymbolPath.CIRCLE
    ..scale = 8
    ..strokeColor = '#393';

  line = Polyline(PolylineOptions()
    ..path = lineCoordinates
    ..icons = [
      IconSequence()
        ..icon = lineSymbol
        ..offset = '100%'
    ]
    ..map = map);

  animateCircle();
}

void animateCircle() {
  var count = 0;
  Timer.periodic(const Duration(milliseconds: 20), (_) {
    count = (count + 1) % 200;

    final icons = line.get('icons') as List<IconSequence>;
    icons[0].offset = '${count / 2}%';
    line.set('icons', icons);
  });
}
