import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/google_maps.dart';

void main() {
  js.scoped(() {
    final mapOptions = new MapOptions()
      ..center = new LatLng(36.964645, -122.01523)
      ..zoom = 18
      ..mapTypeId = MapTypeId.SATELLITE
      ;
    final map = new GMap(query("#map_canvas"), mapOptions);
    map.tilt = 45;
  });
}
