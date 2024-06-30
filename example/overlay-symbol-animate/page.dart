import 'dart:async';
import 'dart:js_interop';

import 'package:google_maps/google_maps.dart' hide Duration;
import 'package:web/web.dart';

late Polyline line;

void main() {
  final mapOptions = MapOptions()
    ..center = LatLng(20.291, 153.027)
    ..zoom = 6
    ..mapTypeId = MapTypeId.TERRAIN;
  final map =
      Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  final lineCoordinates = <LatLng>[
    LatLng(22.291, 153.027),
    LatLng(18.291, 153.027)
  ];
  final lineSymbol = Symbol()
    ..path = SymbolPath.CIRCLE
    ..scale = 8
    ..strokeColor = '#393';

  line = Polyline(PolylineOptions()
    ..path = lineCoordinates.toJS
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

    final icons = line.get('icons') as JSArray<IconSequence?>;
    icons.toDart[0]!.offset = '${count / 2}%';
    line.set('icons', icons);
  });
}
