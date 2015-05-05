import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 5
    ..center = new LatLng(24.886436490787712, -70.2685546875)
    ..mapTypeId = MapTypeId.TERRAIN;
  final map = new GMap(document.getElementById('map-canvas'), mapOptions);

  final triangleCoords = <LatLng>[
    new LatLng(25.774252, -80.190262),
    new LatLng(18.466465, -66.118292),
    new LatLng(32.321384, -64.75737)
  ];

  final bermudaTriangle = new Polygon(new PolygonOptions()
    ..paths = triangleCoords
    ..strokeColor = '#FF0000'
    ..strokeOpacity = 0.8
    ..strokeWeight = 3
    ..fillColor = '#FF0000'
    ..fillOpacity = 0.35);

  bermudaTriangle.map = map;
}
