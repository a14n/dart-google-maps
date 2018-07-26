import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = MapOptions()
    ..scaleControl = true
    ..center = LatLng(30.064742, 31.249509)
    ..zoom = 10;
  final map = GMap(document.getElementById("map-canvas"), mapOptions);

  final marker = Marker(MarkerOptions()
    ..map = map
    ..position = map.center);
  final InfoWindow infowindow = InfoWindow()..content = '<b>القاهرة</b>';
  marker.onClick.listen((e) {
    infowindow.open(map, marker);
  });
}
