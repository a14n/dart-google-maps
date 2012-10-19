import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart';

void main() {
  js.scoped(() {
    final myLatlng = new LatLng(34.04924594193164, -118.24104309082031);
    final mapOptions = new MapOptions()
      ..zoom = 13
      ..center = myLatlng
      ..mapTypeId = MapTypeId.ROADMAP
      ;
    final map = new GMap(query("#map_canvas"), mapOptions);

    final trafficLayer = new TrafficLayer();
    trafficLayer.map = map;
  });
}
