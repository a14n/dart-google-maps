import 'dart:html';

import 'package:google_maps/google_maps.dart';

DirectionsRenderer directionsDisplay;
final directionsService = new DirectionsService();
GMap map;
final haight = new LatLng(37.7699298, -122.4469157);
final oceanBeach = new LatLng(37.7683909618184, -122.51089453697205);

void main() {
  directionsDisplay = new DirectionsRenderer();
  final mapOptions = new MapOptions()
    ..zoom = 14
    ..center = haight;
  map = new GMap(document.getElementById('map-canvas'), mapOptions);
  directionsDisplay.map = map;

  document.getElementById('mode').onChange.listen((e) => calcRoute());
}

void calcRoute() {
  final selectedMode = (document.getElementById('mode') as SelectElement).value;
  final request = new DirectionsRequest()
    ..origin = haight
    ..destination = oceanBeach
    ..travelMode =
    TravelMode.values.firstWhere((t) => t.toString().contains(selectedMode));
  directionsService.route(request, (response, status) {
    if (status == DirectionsStatus.OK) {
      directionsDisplay.directions = response;
    }
  });
}
