import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/js_wrap.dart' as jsw;
import 'package:google_maps/google_maps.dart';

void initialize() {
  js.scoped(() {
    final mapOptions = new MapOptions()
      ..zoom = 8
      ..center = new LatLng(-34.397, 150.644)
      ..mapTypeId = MapTypeId.ROADMAP
      ;
    final map = new GMap(query("#map_canvas"), mapOptions);
  });
}

void main() {
  js.scoped(() {
    js.context.initialize = new js.Callback.once(initialize);
  });

  final script = new ScriptElement()
    ..type = 'text/javascript'
    ..src = 'https://maps.googleapis.com/maps/api/js?sensor=false&callback=initialize'
    ;
  document.body.elements.add(script);
}