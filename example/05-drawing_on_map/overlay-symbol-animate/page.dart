import 'dart:async';
import 'dart:html';

import 'package:google_maps/google_maps.dart';
import 'package:js_wrapping/js_wrapping.dart';

Polyline line;

void main() {
  final mapOptions = MapOptions()
    ..center = LatLng(20.291, 153.027)
    ..zoom = 6
    ..mapTypeId = MapTypeId.TERRAIN;
  final map = GMap(document.getElementById('map-canvas'), mapOptions);

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
  Timer.periodic(Duration(milliseconds: 20), (_) {
    count = (count + 1) % 200;

    final icons = JsList.created(line.get('icons') as JsArray,
        JsInterfaceCodec((o) => IconSequence.created(o)));
    icons[0].offset = '${count / 2}%';
    line.set('icons', asJsObject(icons));
  });
}
