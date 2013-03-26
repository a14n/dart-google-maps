import 'dart:html';
import 'dart:math';
import 'package:js/js.dart' as js;
import 'package:google_maps/google_maps.dart';

void main() {
  js.scoped(() {
    final mapOptions = new MapOptions()
      ..zoom = 4
      ..center = new LatLng(-33, 151)
      ..panControl = false
      ..zoomControl = false
      ..scaleControl = true
      ..mapTypeId = MapTypeId.ROADMAP
    ;
    final map = new GMap(query("#map_canvas"), mapOptions);
  });
}
