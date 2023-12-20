import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_geometry.dart';
import 'package:web/web.dart';

void main() {
  final mapOptions = MapOptions()
    ..center = LatLng(24.886436490787712, -70.2685546875)
    ..zoom = 5
    ..mapTypeId = MapTypeId.TERRAIN;

  final map =
      GMap(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  final triangleCoords = <LatLng>[
    LatLng(25.774252, -80.190262),
    LatLng(18.466465, -66.118292),
    LatLng(32.321384, -64.75737)
  ];

  final bermudaTriangle = Polygon(PolygonOptions()..paths = triangleCoords);

  map.onClick.listen((e) {
    String result;
    if (Poly.containsLocation(e.latLng, bermudaTriangle)!) {
      result = 'red';
    } else {
      result = 'green';
    }

    final circle = GSymbol()
      ..path = SymbolPath.CIRCLE
      ..fillColor = result
      ..fillOpacity = 0.2
      ..strokeColor = 'white'
      ..strokeWeight = 0.5
      ..scale = 10;

    Marker(MarkerOptions()
      ..position = e.latLng
      ..map = map
      ..icon = circle);
  });
}
