import 'dart:html';

import 'package:google_maps/google_maps.dart';

DirectionsRenderer directionsDisplay;
final directionsService = new DirectionsService();

void main() {
  directionsDisplay = new DirectionsRenderer();
  final mapOptions = new MapOptions()
    ..zoom = 7
    ..center = new LatLng(41.850033, -87.6500523);
  final map = new GMap(document.getElementById('map-canvas'), mapOptions);
  directionsDisplay.map = map;
  directionsDisplay.panel = document.getElementById('directions-panel');

  final control = document.getElementById('control');
  control.style.display = 'block';
  map.controls[ControlPosition.TOP_CENTER].push(control);

  document.getElementById('start').onChange.listen((e) => calcRoute());
  document.getElementById('end').onChange.listen((e) => calcRoute());
}

void calcRoute() {
  final start = (document.getElementById('start') as SelectElement).value;
  final end = (document.getElementById('end') as SelectElement).value;
  final request = new DirectionsRequest()
    ..origin = start
    ..destination = end
    ..travelMode = TravelMode.DRIVING;
  directionsService.route(request, (response, status) {
    if (status == DirectionsStatus.OK) {
      directionsDisplay.directions = response;
    }
  });
}
