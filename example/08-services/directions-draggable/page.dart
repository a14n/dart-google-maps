import 'dart:html';

import 'package:google_maps/google_maps.dart';

main() {
  var map = new GMap(document.getElementById('map'), new MapOptions()
        ..zoom = 4
        ..center = new LatLng(-24.345, 134.46) // Australia.
      );

  var directionsService = new DirectionsService();
  var directionsDisplay = new DirectionsRenderer(new DirectionsRendererOptions()
    ..draggable = true
    ..map = map
    ..panel = document.getElementById('right-panel'));

  directionsDisplay.onDirectionsChanged.listen((_) {
    computeTotalDistance(directionsDisplay.directions);
  });

  displayRoute(
      'Perth, WA', 'Sydney, NSW', directionsService, directionsDisplay);
}

displayRoute(String origin, String destination, DirectionsService service,
    DirectionsRenderer display) {
  service.route(
      new DirectionsRequest()
        ..origin = origin
        ..destination = destination
        ..waypoints = [
          new DirectionsWaypoint()..location = 'Cocklebiddy, WA',
          new DirectionsWaypoint()..location = 'Broken Hill, NSW'
        ]
        ..travelMode = TravelMode.DRIVING
        ..avoidTolls = true, (response, status) {
    if (status == DirectionsStatus.OK) {
      display.directions = response;
    } else {
      window.alert('Could not display directions due to: ' + status);
    }
  });
}

computeTotalDistance(result) {
  var total = 0;
  var myroute = result.routes[0];
  for (var i = 0; i < myroute.legs.length; i++) {
    total += myroute.legs[i].distance.value;
  }
  total = total / 1000;
  document.getElementById('total').innerHtml = '$total km';
}
