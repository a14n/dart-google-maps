import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/gmaps.dart';

void main() {
  js.scoped((){
    final mapOptions = new MapOptions()
      ..zoom = 8
      ..center = new LatLng(-34.397, 150.644)
      ..mapTypeId = MapTypeId.ROADMAP
      ;
    final map = new GMap(query("#map_canvas"), mapOptions);
  });
}