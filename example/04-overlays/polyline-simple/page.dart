import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart' as gmaps;

void main() {
  js.scoped(() {
    final myLatLng = new gmaps.LatLng(0, -180);
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 3
      ..center = myLatLng
      ..mapTypeId = gmaps.MapTypeId.TERRAIN
      ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

    var flightPlanCoordinates = [
      new gmaps.LatLng(37.772323, -122.214897),
      new gmaps.LatLng(21.291982, -157.821856),
      new gmaps.LatLng(-18.142599, 178.431),
      new gmaps.LatLng(-27.46758, 153.027892)
    ];
    var flightPath = new gmaps.Polyline(new gmaps.PolylineOptions()
      ..path = flightPlanCoordinates
      ..strokeColor = '#FF0000'
      ..strokeOpacity = 1.0
      ..strokeWeight = 2
    );

    flightPath.map = map;
  });
}