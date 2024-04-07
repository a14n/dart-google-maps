import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

void main() {
  final cairo = LatLng(30.064742, 31.249509);
  final map = Map(
    document.getElementById('map') as HTMLElement,
    MapOptions()
      ..scaleControl = true
      ..center = cairo
      ..zoom = 10,
  );

  final infowindow = InfoWindow()..content = '<b>القاهرة</b>'.toJS;
  final marker = Marker(MarkerOptions()
    ..map = map
    ..position = cairo);
  marker.onClick.listen((e) {
    infowindow.open(map, marker);
  });
}
