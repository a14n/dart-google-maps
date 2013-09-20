import 'dart:html';

import 'package:google_maps/google_maps.dart';

DirectionsRenderer directionsDisplay;
final DirectionsService directionsService = new DirectionsService();

void main() {
  directionsDisplay = new DirectionsRenderer();
  final mapOptions = new MapOptions()
    ..zoom = 7
    ..mapTypeId = MapTypeId.ROADMAP
    ..center = new LatLng(41.850033, -87.6500523)
    ;
  final map = new GMap(query("#map_canvas"), mapOptions);
  directionsDisplay.map = map;
  directionsDisplay.panel = query('#directions-panel');

  final control = query('#control');
  control.style.display = 'block';
  map.controls[ControlPosition.TOP_CENTER].push(control);

  query('#start').onChange.listen((e) => calcRoute());
  query('#end').onChange.listen((e) => calcRoute());
}

void calcRoute() {
  final start = (query('#start') as SelectElement).value;
  final end = (query('#end') as SelectElement).value;
  final request = new DirectionsRequest()
    ..origin = start
    ..destination = end
    ..travelMode = TravelMode.DRIVING // TODO bad object in example DirectionsTravelMode
    ;
  directionsService.route(request, (DirectionsResult response, DirectionsStatus status) {
    if (status == DirectionsStatus.OK) {
      directionsDisplay.directions = response;
    }
  });
}