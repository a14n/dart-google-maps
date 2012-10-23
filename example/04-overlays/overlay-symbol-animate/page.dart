import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/js_wrap.dart' as jsw;
import 'package:google_maps/google_maps.dart';

Polyline line;

void main() {
  js.scoped(() {
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
    final lineSymbol = new Symbol()
      ..path = SymbolPath.CIRCLE
      ..scale = 8
      ..strokeColor = '#393'
      ;

    line = jsw.retain(new Polyline(new PolylineOptions()
      ..path = lineCoordinates
      ..icons = [new IconSequence()
        ..icon = lineSymbol
        ..offset = '100%'
      ]
      ..map = map
    ));

    animateCircle();
  });
}

void animateCircle() {
  var count = 0;
  window.setInterval(() {
    js.scoped(() {
      count = (count + 1) % 200;

      final icons = new jsw.JsList.fromJsProxy(line.get('icons'), (e) => new IconSequence.fromJsProxy(e));
      icons[0].offset = '${count / 2}%';
      line.set('icons', icons);
    });
  }, 20);
}
