import 'dart:async';
import 'dart:html';

import 'package:google_maps/google_maps.dart';

void main() {
  final myLatLng = LatLng(-25.363, 131.044);
  final map = GMap(
    document.getElementById('map') as HtmlElement,
    MapOptions()
      ..zoom = 4
      ..center = myLatLng,
  );

  final marker = Marker(MarkerOptions()
    ..position = myLatLng
    ..map = map
    ..title = 'Click to zoom');

  map.onCenterChanged.listen((_) {
    // 3 seconds after the center of the map has changed, pan back to the marker.
    Timer(const Duration(seconds: 3), () {
      map.panTo(marker.position);
    });
  });

  marker.onClick.listen((e) {
    map
      ..zoom = 8
      ..center = marker.position;
  });
}
