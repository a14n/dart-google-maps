import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/google_maps.dart';

void main() {
  js.scoped(() {
    final myLatLng = new LatLng(0, -180);
    final mapOptions = new MapOptions()
      ..zoom = 3
      ..center = myLatLng
      ..mapTypeId = MapTypeId.TERRAIN
      ;
    final map = new GMap(query("#map_canvas"), mapOptions);

    var flightPlanCoordinates = [
      new LatLng(37.772323, -122.214897),
      new LatLng(21.291982, -157.821856),
      new LatLng(-18.142599, 178.431),
      new LatLng(-27.46758, 153.027892)
    ];
    var flightPath = new Polyline(new PolylineOptions()
      ..path = flightPlanCoordinates
      ..strokeColor = '#FF0000'
      ..strokeOpacity = 1.0
      ..strokeWeight = 2
    );

    flightPath.map = map;
  });
}