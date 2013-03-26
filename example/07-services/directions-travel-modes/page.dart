import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/google_maps.dart';

DirectionsRenderer directionsDisplay;
final DirectionsService directionsService = js.retain(new DirectionsService());
GMap map;
final LatLng haight = js.retain(new LatLng(37.7699298, -122.4469157));
final LatLng oceanBeach = js.retain(new LatLng(37.7683909618184, -122.51089453697205));

void main() {
  js.scoped(() {
    directionsDisplay = js.retain(new DirectionsRenderer());
    final mapOptions = new MapOptions()
      ..zoom = 14
      ..mapTypeId = MapTypeId.ROADMAP
      ..center = haight
      ;
    map = new GMap(query("#map_canvas"), mapOptions);
    directionsDisplay.map = map;

    query('#mode').onChange.listen((e) => calcRoute());
  });
}

void calcRoute() {
  js.scoped(() {
    final selectedMode = (query('#mode') as SelectElement).value;
    final request = new DirectionsRequest()
      ..origin = haight
      ..destination = oceanBeach
      ..travelMode = TravelMode.find(selectedMode)
      ;
    directionsService.route(request, (DirectionsResult response, DirectionsStatus status) {
      if (status == DirectionsStatus.OK) {
        directionsDisplay.directions = response;
      }
    });
  });
}