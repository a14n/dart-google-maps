import 'dart:html';
import 'dart:js' as js;
import 'package:google_maps/google_maps.dart';

void initialize() {
  final mapOptions = new MapOptions()
    ..zoom = 8
    ..center = new LatLng(-34.397, 150.644)
    ..mapTypeId = MapTypeId.ROADMAP
    ;
  new GMap(querySelector("#map_canvas"), mapOptions);
}

void main() {
  js.context['initialize'] = initialize;

  final script = new ScriptElement()
    ..type = 'text/javascript'
    ..src = 'https://maps.googleapis.com/maps/api/js?sensor=false&callback=initialize'
    ;
  document.body.children.add(script);
}
