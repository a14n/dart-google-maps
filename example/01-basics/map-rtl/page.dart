import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = new MapOptions()
    ..scaleControl = true
    ..center = new LatLng(30.064742, 31.249509)
    ..zoom = 10
    ..mapTypeId = MapTypeId.ROADMAP
    ;
  final map = new GMap(query("#map_canvas"), mapOptions);

  final marker = new Marker(new MarkerOptions()
    ..map = map
    ..position = map.center
  );
  final InfoWindow infowindow = new InfoWindow();
  infowindow.content = '<b>القاهرة</b>';

  marker.onClick.listen((e) {
    infowindow.open(map, marker);
  });
}
