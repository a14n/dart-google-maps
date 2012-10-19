import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart' as gmaps;

final gmaps.DirectionsRendererOptions rendererOptions = jsw.retain(new gmaps.DirectionsRendererOptions()
  ..draggable = true
);
final gmaps.DirectionsRenderer directionsDisplay = jsw.retain(new gmaps.DirectionsRenderer(rendererOptions));
final gmaps.DirectionsService directionsService = jsw.retain(new gmaps.DirectionsService());
gmaps.GMap map;

final gmaps.LatLng australia = jsw.retain(new gmaps.LatLng(-25.274398, 133.775136));

void main() {
  js.scoped(() {
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 7
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ..center = australia
      ;
    map = jsw.retain(new gmaps.GMap(query("#map_canvas"), mapOptions));
    directionsDisplay.map = map;
    directionsDisplay.panel = query('#directionsPanel');

    directionsDisplay.on.directionsChanged.add(() {
      computeTotalDistance(directionsDisplay.directions);
    });

    calcRoute();
  });
}

void calcRoute() {
  final request = new gmaps.DirectionsRequest()
    ..origin = 'Sydney, NSW'
    ..destination = 'Sydney, NSW'
    ..waypoints = [
      new gmaps.DirectionsWaypoint()..location = 'Bourke, NSW',
      new gmaps.DirectionsWaypoint()..location = 'Broken Hill, NSW'
    ]
    ..travelMode = gmaps.TravelMode.DRIVING // TODO bad object in example DirectionsTravelMode
    ;
  directionsService.route(request, (gmaps.DirectionsResult response, gmaps.DirectionsStatus status) {
    if (status == gmaps.DirectionsStatus.OK) {
      directionsDisplay.directions = response;
    }
  });
}

void computeTotalDistance(gmaps.DirectionsResult result) {
  num total = 0;
  final myroute = result.routes[0];
  for (int i = 0; i < myroute.legs.length; i++) {
    total += myroute.legs[i].distance.value;
  }
  total = total / 1000.0;  // TODO bad synthax in example
  query('#total').innerHTML = '${total} km';
}