import 'dart:html';

import 'package:google_maps/google_maps.dart';

final rendererOptions = new DirectionsRendererOptions()..draggable = true;
final directionsDisplay = new DirectionsRenderer(rendererOptions);
final directionsService = new DirectionsService();
GMap map;

final australia = new LatLng(-25.274398, 133.775136);

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 7
    ..center = australia;
  map = new GMap(document.getElementById('map-canvas'), mapOptions);
  directionsDisplay.map = map;
  directionsDisplay.panel = document.getElementById('directionsPanel');

  directionsDisplay.onDirectionsChanged.listen((_) {
    computeTotalDistance(directionsDisplay.directions);
  });

  calcRoute();
}

void calcRoute() {
  final request = new DirectionsRequest()
    ..origin = 'Sydney, NSW'
    ..destination = 'Sydney, NSW'
    ..waypoints = [
      new DirectionsWaypoint()..location = 'Bourke, NSW',
      new DirectionsWaypoint()..location = 'Broken Hill, NSW'
    ]
    ..travelMode = TravelMode.DRIVING;
  directionsService.route(request, (response, status) {
    if (status == DirectionsStatus.OK) {
      directionsDisplay.directions = response;
    }
  });
}

void computeTotalDistance(DirectionsResult result) {
  num total = 0;
  final myroute = result.routes[0];
  for (final leg in myroute.legs) {
    total += leg.distance.value;
  }
  total = total / 1000.0;
  document.getElementById('total').innerHtml = '${total} km';
}
