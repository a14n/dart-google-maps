import 'dart:html';
import 'dart:math' as Math;
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 4
    ..center = new LatLng(-25.363882, 131.044922);

  final map = new GMap(document.getElementById('map-canvas'), mapOptions);

  // Add 5 markers to the map at random locations.
  final southWest = new LatLng(-31.203405, 125.244141);
  final northEast = new LatLng(-25.363882, 131.044922);

  final bounds = new LatLngBounds(southWest, northEast);
  map.fitBounds(bounds);

  final lngSpan = northEast.lng - southWest.lng;
  final latSpan = northEast.lat - southWest.lat;

  final random = new Math.Random();
  for (var i = 0; i < 5; i++) {
    final position = new LatLng(southWest.lat + latSpan * random.nextDouble(),
        southWest.lng + lngSpan * random.nextDouble());
    final marker = new Marker(new MarkerOptions()
      ..position = position
      ..map = map);

    marker.title = (i + 1).toString();
    attachSecretMessage(marker, i);
  }
}

// The five markers show a secret message when clicked
// but that message is not within the marker's instance data.
void attachSecretMessage(Marker marker, num number) {
  final message = ["This", "is", "the", "secret", "message"];
  final infowindow =
      new InfoWindow(new InfoWindowOptions()..content = message[number]);
  marker.onClick.listen((e) {
    infowindow.open(marker.map, marker);
  });
}
