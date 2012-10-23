import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/google_maps.dart';

void main() {
  js.scoped(() {
    final myLatLng = new LatLng(24.886436490787712, -70.2685546875);
    final mapOptions = new MapOptions()
      ..zoom = 5
      ..center = myLatLng
      ..mapTypeId = MapTypeId.TERRAIN
      ;
    final map = new GMap(query("#map_canvas"), mapOptions);

    final triangleCoords = [
      new LatLng(25.774252, -80.190262),
      new LatLng(18.466465, -66.118292),
      new LatLng(32.321384, -64.75737),
      new LatLng(25.774252, -80.190262)
    ];

    final bermudaTriangle = new Polygon(new PolygonOptions()
      ..paths = triangleCoords
      ..strokeColor = '#FF0000'
      ..strokeOpacity = 0.8
      ..strokeWeight = 3
      ..fillColor = '#FF0000'
      ..fillOpacity = 0.35
    );

    bermudaTriangle.map = map;
  });
}