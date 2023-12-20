import 'package:google_maps/google_maps.dart';
import 'package:web/helpers.dart';

late DirectionsRenderer directionsDisplay;
final directionsService = DirectionsService();
late GMap map;

void main() {
  directionsDisplay = DirectionsRenderer();
  final chicago = LatLng(41.850033, -87.6500523);
  final mapOptions = MapOptions()
    ..zoom = 7
    ..center = chicago;
  map = GMap(document.getElementById('map-canvas') as HTMLElement, mapOptions);
  directionsDisplay.map = map;

  document.getElementById('start')!.onChange.listen((e) => calcRoute());
  document.getElementById('end')!.onChange.listen((e) => calcRoute());
}

void calcRoute() {
  final start = (document.getElementById('start') as HTMLSelectElement).value;
  final end = (document.getElementById('end') as HTMLSelectElement).value;
  final request = DirectionsRequest()
    ..origin = start
    ..destination = end
    ..travelMode = TravelMode.DRIVING;
  directionsService.route(request, (response, status) {
    if (status == DirectionsStatus.OK) {
      directionsDisplay.directions = response;
    }
  });
}
