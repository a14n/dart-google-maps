import 'dart:html';

import 'package:google_maps/google_maps.dart';
import 'package:js_wrapping/js_wrapping.dart';

DirectionsRenderer directionsDisplay;
final directionsService = DirectionsService();
GMap map;
final haight = LatLng(37.7699298, -122.4469157);
final oceanBeach = LatLng(37.7683909618184, -122.51089453697205);

void main() {
  directionsDisplay = DirectionsRenderer();
  final mapOptions = MapOptions()
    ..zoom = 14
    ..center = haight;
  map = GMap(document.getElementById('map-canvas'), mapOptions);
  directionsDisplay.map = map;

  document.getElementById('mode').onChange.listen((e) => calcRoute());
}

void calcRoute() {
  final selectedMode = (document.getElementById('mode') as SelectElement).value;
  final request = DirectionsRequest()
    ..origin = haight
    ..destination = oceanBeach
    ..travelMode = {
      'BICYCLING': TravelMode.BICYCLING,
      'DRIVING': TravelMode.DRIVING,
      'TRANSIT': TravelMode.TRANSIT,
      'WALKING': TravelMode.WALKING,
    }[selectedMode];
  directionsService.route(request, allowInterop((response, status) {
    if (status == DirectionsStatus.OK) {
      directionsDisplay.directions = response;
    }
  }));
}
