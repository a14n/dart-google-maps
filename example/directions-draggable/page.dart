import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

void main() {
  final map = Map(
      document.getElementById('map') as HTMLElement,
      MapOptions()
        ..zoom = 4
        ..center = LatLng(-24.345, 134.46) // Australia.
      );

  final directionsService = DirectionsService();
  final directionsDisplay = DirectionsRenderer(DirectionsRendererOptions()
    ..draggable = true
    ..map = map
    ..panel = document.getElementById('right-panel') as HTMLElement);

  directionsDisplay.onDirectionsChanged.listen((_) {
    computeTotalDistance(directionsDisplay.directions);
  });

  displayRoute(
      'Perth, WA', 'Sydney, NSW', directionsService, directionsDisplay);
}

void displayRoute(String origin, String destination, DirectionsService service,
    DirectionsRenderer display) {
  service.route(
    DirectionsRequest()
      ..origin = origin.toJS
      ..destination = destination.toJS
      ..waypoints = [
        DirectionsWaypoint()..location = 'Cocklebiddy, WA'.toJS,
        DirectionsWaypoint()..location = 'Broken Hill, NSW'.toJS,
      ]
      ..travelMode = TravelMode.DRIVING
      ..avoidTolls = true,
    (DirectionsResult? response, DirectionsStatus status) {
      if (status == DirectionsStatus.OK) {
        display.directions = response!;
      } else {
        window.alert('Could not display directions due to: $status');
      }
    }.toJS,
  );
}

void computeTotalDistance(DirectionsResult result) {
  var total = 0.0;
  final myroute = result.routes[0];
  for (var i = 0; i < myroute.legs.length; i++) {
    total += myroute.legs[i].distance!.value;
  }
  total = total / 1000;
  document.getElementById('total')!.textContent = '$total km';
}
