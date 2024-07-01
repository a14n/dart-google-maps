import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_elevation.dart';
import 'package:web/web.dart';

late ElevationService elevator;
late Map map;
final InfoWindow infowindow = InfoWindow();
final LatLng denali = LatLng(63.3333333, -150.5);

void main() {
  final mapOptions = MapOptions()
    ..zoom = 8
    ..center = denali
    ..mapTypeId = MapTypeId.TERRAIN;
  map = Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  // Create an ElevationService
  elevator = ElevationService();

  // Add a listener for the click event and call getElevation on that location
  map.onClick.listen(getElevation);
}

void getElevation(MapMouseEventOrIconMouseEvent e) async {
  final locations = <LatLng>[];

  // Retrieve the clicked location and push it on the array
  final clickedLocation = e.latLng!;
  locations.add(clickedLocation);

  // Create a LocationElevationRequest object using the array's one value
  final positionalRequest = LocationElevationRequest()..locations = locations;

  // Initiate the location request
  final response = await elevator.getElevationForLocations(positionalRequest);

  // Retrieve the first result
  if (response.results.isNotEmpty) {
    // Open an info window indicating the elevation at the clicked position
    infowindow.content =
        'The elevation at this point <br>is ${response.results[0].elevation} meters.'
            .toJS;
    infowindow.position = clickedLocation;
    infowindow.open(map);
  } else {
    window.alert('No results found');
  }
}
