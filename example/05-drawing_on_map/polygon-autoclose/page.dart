import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = MapOptions()
    ..zoom = 5
    ..center = LatLng(24.886436490787712, -70.2685546875)
    ..mapTypeId = MapTypeId.TERRAIN;
  final map =
      GMap(document.getElementById('map-canvas') as HtmlElement, mapOptions);

  final triangleCoords = <LatLng>[
    LatLng(25.774252, -80.190262),
    LatLng(18.466465, -66.118292),
    LatLng(32.321384, -64.75737)
  ];

  Polygon(PolygonOptions()
        ..paths = triangleCoords
        ..strokeColor = '#FF0000'
        ..strokeOpacity = 0.8
        ..strokeWeight = 3
        ..fillColor = '#FF0000'
        ..fillOpacity = 0.35)
      .map = map;
}
