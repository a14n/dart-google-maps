import 'dart:async';
import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:js/js_wrapping.dart' as jsw;
import 'package:google_maps/google_maps.dart';

Polyline line;

void main() {
  final mapOptions = new MapOptions()
    ..center = new LatLng(20.291, 153.027)
    ..zoom = 6
    ..mapTypeId = MapTypeId.ROADMAP
    ;
  final map = new GMap(query("#map_canvas"), mapOptions);

  final lineCoordinates = [
    new LatLng(22.291, 153.027),
    new LatLng(18.291, 153.027)
  ];
  final lineSymbol = new GSymbol()
    ..path = SymbolPath.CIRCLE
    ..scale = 8
    ..strokeColor = '#393'
    ;

  line = js.retain(new Polyline(new PolylineOptions()
    ..path = lineCoordinates
    ..icons = [new IconSequence()
      ..icon = lineSymbol
      ..offset = '100%'
    ]
    ..map = map
  ));

  animateCircle();
}

void animateCircle() {
  var count = 0;
  new Timer.periodic(new Duration(milliseconds: 20), (_) {
    count = (count + 1) % 200;

    final icons = jsw.JsArrayToListAdapter.castListOfSerializables(line.get('icons'), IconSequence.cast);
    icons[0].offset = '${count / 2}%';
    line.set('icons', icons);
  });
}
