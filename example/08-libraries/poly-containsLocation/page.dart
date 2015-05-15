import 'dart:html' hide MouseEvent;

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_geometry.dart';

void main() {
  final mapOptions = new MapOptions()
    ..center = new LatLng(24.886436490787712, -70.2685546875)
    ..zoom = 5
    ..mapTypeId = MapTypeId.TERRAIN;

  final map = new GMap(document.getElementById('map-canvas'), mapOptions);

  final triangleCoords = <LatLng>[
    new LatLng(25.774252, -80.190262),
    new LatLng(18.466465, -66.118292),
    new LatLng(32.321384, -64.75737)
  ];

  final bermudaTriangle =
      new Polygon(new PolygonOptions()..paths = triangleCoords);

  map.onClick.listen((e) {
    var result;
    if (poly.containsLocation(e.latLng, bermudaTriangle)) {
      result = 'red';
    } else {
      result = 'green';
    }

    var circle = new GSymbol()
      ..path = SymbolPath.CIRCLE
      ..fillColor = result
      ..fillOpacity = 0.2
      ..strokeColor = 'white'
      ..strokeWeight = 0.5
      ..scale = 10;

    new Marker(new MarkerOptions()
      ..position = e.latLng
      ..map = map
      ..icon = circle);
  });
}
