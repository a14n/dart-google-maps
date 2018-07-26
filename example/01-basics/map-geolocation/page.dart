import 'dart:html';
import 'package:google_maps/google_maps.dart';

GMap map;

void main() {
  final mapOptions = MapOptions()..zoom = 6;
  map = GMap(document.getElementById("map-canvas"), mapOptions);

  // Try HTML5 geolocation
  if (window.navigator.geolocation != null) {
    window.navigator.geolocation.getCurrentPosition().then((position) {
      final pos = LatLng(position.coords.latitude, position.coords.longitude);

      final infowindow = InfoWindow(InfoWindowOptions()
        ..position = pos
        ..content = 'Location found using HTML5.');
      // FIXME https://code.google.com/p/gmaps-api-issues/issues/detail?id=7908
      infowindow.open(map);

      map.center = pos;
    }, onError: (error) {
      handleNoGeolocation(true);
    });
  } else {
    // Browser doesn't support Geolocation
    handleNoGeolocation(false);
  }
}

void handleNoGeolocation(bool errorFlag) {
  String content;
  if (errorFlag) {
    content = 'Error: The Geolocation service failed.';
  } else {
    content = 'Error: Your browser doesn\'t support geolocation.';
  }

  final options = InfoWindowOptions()
    ..position = LatLng(60, 105)
    ..content = content;

  final infowindow = InfoWindow(options);
  // FIXME https://code.google.com/p/gmaps-api-issues/issues/detail?id=7908
  infowindow.open(map);

  map.center = options.position;
}
