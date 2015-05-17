import 'dart:html';

import 'package:google_maps/google_maps.dart';

GMap map;
DirectionsRenderer directionsDisplay;
DirectionsService directionsService;
InfoWindow stepDisplay;
final markerArray = new List<Marker>();

void main() {
  // Instantiate a directions service.
  directionsService = new DirectionsService();

  // Create a map and center it on Manhattan.
  final manhattan = new LatLng(40.7711329, -73.9741874);
  final mapOptions = new MapOptions()
    ..zoom = 13
    ..center = manhattan;
  map = new GMap(document.getElementById('map-canvas'), mapOptions);

  // Create a renderer for directions and bind it to the map.
  final rendererOptions = new DirectionsRendererOptions()..map = map;
  directionsDisplay = new DirectionsRenderer(rendererOptions);

  // Instantiate an info window to hold step text.
  stepDisplay = new InfoWindow();

  document.getElementById('start').onChange.listen((e) => calcRoute());
  document.getElementById('end').onChange.listen((e) => calcRoute());
}

void calcRoute() {
  // First, remove any existing markers from the map.
  markerArray.forEach((marker) => marker.map = null);

  // Now, clear the array itself.
  markerArray.clear();

  // Retrieve the start and end locations and create
  // a DirectionsRequest using WALKING directions.
  final start = (document.getElementById('start') as SelectElement).value;
  final end = (document.getElementById('end') as SelectElement).value;
  final request = new DirectionsRequest()
    ..origin = start
    ..destination = end
    ..travelMode = TravelMode.WALKING;

  // Route the directions and pass the response to a
  // function to create markers for each step.
  directionsService.route(request, (response, status) {
    if (status == DirectionsStatus.OK) {
      final warnings = querySelector('#warnings_panel');
      warnings.innerHtml = '<b>${response.routes[0].warnings}</b>';
      directionsDisplay.directions = response;
      showSteps(response);
    }
  });
}

void showSteps(DirectionsResult directionResult) {
  // For each step, place a marker, and add the text to the marker's
  // info window. Also attach the marker to an array so we
  // can keep track of it and remove it when calculating new
  // routes.
  final myRoute = directionResult.routes[0].legs[0];

  for (final step in myRoute.steps) {
    final marker = new Marker(new MarkerOptions()
      ..position = step.startLocation
      ..map = map);
    attachInstructionText(marker, step.instructions);
    markerArray.add(marker);
  }
}

void attachInstructionText(Marker marker, String text) {
  marker.onClick.listen((e) {
    // Open an info window when the marker is clicked on,
    // containing the text of the step.
    stepDisplay.content = text;
    stepDisplay.open(map, marker);
  });
}
