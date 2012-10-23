import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/google_maps.dart';

DirectionsRenderer directionsDisplay;
final DirectionsService directionsService = jsw.retain(new DirectionsService());
GMap map;

void main() {
  js.scoped(() {
    directionsDisplay = jsw.retain(new DirectionsRenderer());
    final chicago = new LatLng(41.850033, -87.6500523);
    final mapOptions = new MapOptions()
      ..zoom = 7
      ..mapTypeId = MapTypeId.ROADMAP
      ..center = chicago
      ;
    map = jsw.retain(new GMap(query("#map_canvas"), mapOptions));
    directionsDisplay.map = map;

    query('#start').on.change.add((e) => calcRoute());
    query('#end').on.change.add((e) => calcRoute());
  });
}

void calcRoute() {
  js.scoped(() {
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
  });
}