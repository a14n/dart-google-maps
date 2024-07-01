import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

late DirectionsRenderer directionsDisplay;
final directionsService = DirectionsService();
late Map map;
final haight = LatLng(37.7699298, -122.4469157);
final oceanBeach = LatLng(37.7683909618184, -122.51089453697205);

void main() {
  directionsDisplay = DirectionsRenderer();
  final mapOptions = MapOptions()
    ..zoom = 14
    ..center = haight;
  map = Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);
  directionsDisplay.map = map;

  document.getElementById('mode')!.onChange.listen((e) => calcRoute());
}

void calcRoute() async {
  final selectedMode =
      (document.getElementById('mode') as HTMLSelectElement).value;
  final request = DirectionsRequest()
    ..origin = haight
    ..destination = oceanBeach
    ..travelMode = {
      'BICYCLING': TravelMode.BICYCLING,
      'DRIVING': TravelMode.DRIVING,
      'TRANSIT': TravelMode.TRANSIT,
      'WALKING': TravelMode.WALKING,
    }[selectedMode]!;
  directionsDisplay.directions = await directionsService.route(request);
}
