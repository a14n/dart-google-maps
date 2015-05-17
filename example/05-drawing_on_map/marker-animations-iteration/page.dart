import 'dart:async';
import 'dart:html' hide Animation;
import 'package:google_maps/google_maps.dart';

final berlin = new LatLng(52.520816, 13.410186);
final List<LatLng> neighborhoods = [
  new LatLng(52.511467, 13.447179),
  new LatLng(52.549061, 13.422975),
  new LatLng(52.497622, 13.396110),
  new LatLng(52.517683, 13.394393)
];

final markers = <Marker>[];

GMap map;

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 12
    ..center = berlin;
  map = new GMap(document.getElementById('map-canvas'), mapOptions);

  document.getElementById('drop').onClick.listen(drop);
}

void drop(_) {
  clearMarkers();
  for (var i = 0; i < neighborhoods.length; i++) {
    new Timer(new Duration(milliseconds: i * 200), () {
      addMarker(neighborhoods[i]);
    });
  }
}

void addMarker(LatLng position) {
  markers.add(new Marker(new MarkerOptions()
    ..position = position
    ..map = map
    ..animation = Animation.DROP));
}

void clearMarkers() {
  for (var i = 0; i < markers.length; i++) {
    markers[i].map = null;
  }
  markers.clear();
}
