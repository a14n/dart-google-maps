import 'dart:html';
import 'dart:math' as math;

import 'package:google_maps/google_maps.dart';

void main() {
  final map = GMap(
      document.getElementById('map'),
      MapOptions()
        ..zoom = 4
        ..center = LatLng(-25.363882, 131.044922));

  // Add 5 markers to the map at random locations.
  final southWest = LatLng(-31.203405, 125.244141);
  final northEast = LatLng(-25.363882, 131.044922);
  final bounds = LatLngBounds(southWest, northEast);
  // Display the area between the location southWest and northEast.
  map.fitBounds(bounds);

  // Add 5 markers to map at random locations.
  // For each of these markers, give them a title with their index, and when
  // they are clicked they should open an infowindow with text from a secret
  // message.
  final secretMessages = ['This', 'is', 'the', 'secret', 'message'];
  final lngSpan = northEast.lng - southWest.lng;
  final latSpan = northEast.lat - southWest.lat;

  final random = math.Random();
  for (var i = 0; i < 5; i++) {
    final marker = Marker(MarkerOptions()
      ..position = LatLng(
        southWest.lat + latSpan * random.nextDouble(),
        southWest.lng + lngSpan * random.nextDouble(),
      )
      ..map = map);
    attachSecretMessage(marker, secretMessages[i]);
  }
}

// The five markers show a secret message when clicked
// but that message is not within the marker's instance data.
void attachSecretMessage(Marker marker, String secretMessage) {
  final infowindow = InfoWindow(InfoWindowOptions()..content = secretMessage);
  marker.onClick.listen((e) {
    infowindow.open(marker.map, marker);
  });
}
