import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/js_wrap.dart' as jsw;
import 'package:google_maps/google_maps.dart';

GMap map;
DirectionsRenderer directionsDisplay;
DirectionsService directionsService;
InfoWindow stepDisplay;
final markerArray = new List<Marker>();

void main() {
  js.scoped(() {
    // Instantiate a directions service.
    directionsService = jsw.retain(new DirectionsService());

    // Create a map and center it on Manhattan.
    final manhattan = new LatLng(40.7711329, -73.9741874);
    final mapOptions = new MapOptions()
      ..zoom = 13
      ..mapTypeId = MapTypeId.ROADMAP
      ..center = manhattan
      ;
    map = jsw.retain(new GMap(query("#map_canvas"), mapOptions));

    // Create a renderer for directions and bind it to the map.
    final rendererOptions = new DirectionsRendererOptions()
      ..map = map
      ;
    directionsDisplay = jsw.retain(new DirectionsRenderer(rendererOptions));

    // Instantiate an info window to hold step text.
    stepDisplay = jsw.retain(new InfoWindow());

    query('#start').on.change.add((e) => calcRoute());
    query('#end').on.change.add((e) => calcRoute());
  });
}

void calcRoute() {
  js.scoped(() {
    // First, remove any existing markers from the map.
    markerArray.forEach((marker) => marker.map = null);
    markerArray.forEach(jsw.release);

    // Now, clear the array itself.
    markerArray.clear();

    // Retrieve the start and end locations and create
    // a DirectionsRequest using WALKING directions.
    final start = (query('#start') as SelectElement).value;
    final end = (query('#end') as SelectElement).value;
    final request = new DirectionsRequest()
      ..origin = start
      ..destination = end
      ..travelMode = TravelMode.WALKING // TODO bad object in example DirectionsTravelMode
      ;

    // Route the directions and pass the response to a
    // function to create markers for each step.
    directionsService.route(request, (DirectionsResult response, DirectionsStatus status) {
      if (status == DirectionsStatus.OK) {
        final warnings = query('#warnings_panel');
        warnings.innerHtml = '<b>${response.routes[0].warnings}</b>';
        directionsDisplay.directions = response;
        showSteps(response);
      }
    });
  });
}

void showSteps(DirectionsResult directionResult) {
  // For each step, place a marker, and add the text to the marker's
  // info window. Also attach the marker to an array so we
  // can keep track of it and remove it when calculating new
  // routes.
  final myRoute = directionResult.routes[0].legs[0];

  for(final step in myRoute.steps) {
    final marker = new Marker(new MarkerOptions()
      ..position = step.startLocation // TODO bad attribut in example "start_point"
      ..map = map
    );
    attachInstructionText(marker, step.instructions);
    jsw.retain(marker);
    markerArray.add(marker);
  }
}

void attachInstructionText(Marker marker, String text) {
  marker.on.click.add((e) {
    // Open an info window when the marker is clicked on,
    // containing the text of the step.
    stepDisplay.content = text;
    stepDisplay.open(map, marker);
  });
}