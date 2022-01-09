import 'dart:html';

import 'package:google_maps/google_maps.dart';

late DirectionsRenderer directionsDisplay;
final directionsService = DirectionsService();

void main() {
  directionsDisplay = DirectionsRenderer();
  final mapOptions = MapOptions()
    ..zoom = 7
    ..center = LatLng(41.850033, -87.6500523);
  final map =
      GMap(document.getElementById('map-canvas') as HtmlElement, mapOptions);
  directionsDisplay.map = map;
  directionsDisplay.panel =
      document.getElementById('directions-panel') as HtmlElement;

  final control = document.getElementById('control') as HtmlElement;
  control.style.display = 'block';
  map.controls![ControlPosition.TOP_CENTER as int]!.push(control);

  document.getElementById('start')!.onChange.listen((e) => calcRoute());
  document.getElementById('end')!.onChange.listen((e) => calcRoute());
}

void calcRoute() {
  final start = (document.getElementById('start')! as SelectElement).value;
  final end = (document.getElementById('end')! as SelectElement).value;
  final request = DirectionsRequest()
    ..origin = start
    ..destination = end
    ..travelMode = TravelMode.DRIVING;
  directionsService.route(request, (response, status) {
    if (status == DirectionsStatus.OK) {
      directionsDisplay.directions = response;
    }
  });
}
