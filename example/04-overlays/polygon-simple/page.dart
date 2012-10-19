import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart' as gmaps;

void main() {
  js.scoped(() {
    final myLatLng = new gmaps.LatLng(24.886436490787712, -70.2685546875);
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 5
      ..center = myLatLng
      ..mapTypeId = gmaps.MapTypeId.TERRAIN
      ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

    final triangleCoords = [
      new gmaps.LatLng(25.774252, -80.190262),
      new gmaps.LatLng(18.466465, -66.118292),
      new gmaps.LatLng(32.321384, -64.75737),
      new gmaps.LatLng(25.774252, -80.190262)
    ];

    final bermudaTriangle = new gmaps.Polygon(new gmaps.PolygonOptions()
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