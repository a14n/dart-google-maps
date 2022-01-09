import 'dart:html';

import 'package:google_maps/google_maps.dart';

void main() {
  final map = GMap(
      document.getElementById('map') as HtmlElement,
      MapOptions()
        ..zoom = 4
        ..center = LatLng(-24.345, 134.46) // Australia.
      );

  final directionsService = DirectionsService();
  final directionsDisplay = DirectionsRenderer(DirectionsRendererOptions()
    ..draggable = true
    ..map = map
    ..panel = document.getElementById('right-panel') as HtmlElement);

  directionsDisplay.onDirectionsChanged.listen((_) {
    computeTotalDistance(directionsDisplay.directions!);
  });

  displayRoute(
      'Perth, WA', 'Sydney, NSW', directionsService, directionsDisplay);
}

void displayRoute(String origin, String destination, DirectionsService service,
    DirectionsRenderer display) {
  service.route(
    DirectionsRequest()
      ..origin = origin
      ..destination = destination
      ..waypoints = [
        DirectionsWaypoint()..location = 'Cocklebiddy, WA',
        DirectionsWaypoint()..location = 'Broken Hill, NSW'
      ]
      ..travelMode = TravelMode.DRIVING
      ..avoidTolls = true,
    (response, status) {
      if (status == DirectionsStatus.OK) {
        display.directions = response;
      } else {
        window.alert('Could not display directions due to: $status');
      }
    },
  );
}

void computeTotalDistance(DirectionsResult result) {
  var total = 0.0;
  final myroute = result.routes![0]!;
  for (var i = 0; i < myroute.legs!.length; i++) {
    total += myroute.legs![i]!.distance!.value!;
  }
  total = total / 1000;
  document.getElementById('total')!.innerHtml = '$total km';
}
