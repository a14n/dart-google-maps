import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = MapOptions()
    ..zoom = 1
    ..center = LatLng(24.886, -70.268)
    ..mapTypeId = MapTypeId.TERRAIN;
  final map = GMap(document.getElementById('map-canvas'), mapOptions);

  final blueCoords = <LatLng>[
    LatLng(25.774, -60.190),
    LatLng(18.466, -46.118),
    LatLng(32.321, -44.757)
  ];

  final redCoords = <LatLng>[
    LatLng(25.774, -80.190),
    LatLng(18.466, -66.118),
    LatLng(32.321, -64.757)
  ];

  // Construct a draggable red triangle with geodesic set to true.
  Polygon(PolygonOptions()
    ..map = map
    ..paths = redCoords
    ..strokeColor = '#FF0000'
    ..strokeOpacity = 0.8
    ..strokeWeight = 2
    ..fillColor = '#FF0000'
    ..fillOpacity = 0.35
    ..draggable = true
    ..geodesic = true);

  // Construct a draggable blue triangle with geodesic set to false.
  Polygon(PolygonOptions()
    ..map = map
    ..paths = blueCoords
    ..strokeColor = '#0000FF'
    ..strokeOpacity = 0.8
    ..strokeWeight = 2
    ..fillColor = '#0000FF'
    ..fillOpacity = 0.35
    ..draggable = true
    ..geodesic = false);
}
