import 'dart:html' hide MouseEvent;

import 'package:google_maps/google_maps.dart';

ElevationService elevator;
GMap map;
final InfoWindow infowindow = InfoWindow();
final LatLng denali = LatLng(63.3333333, -150.5);

void main() {
  final mapOptions = MapOptions()
    ..zoom = 8
    ..center = denali
    ..mapTypeId = MapTypeId.TERRAIN;
  map = GMap(document.getElementById('map-canvas'), mapOptions);

  // Create an ElevationService
  elevator = ElevationService();

  // Add a listener for the click event and call getElevation on that location
  map.onClick.listen(getElevation);
}

void getElevation(MapMouseEvent e) {
  final locations = <LatLng>[];

  // Retrieve the clicked location and push it on the array
  final clickedLocation = e.latLng;
  locations.add(clickedLocation);

  // Create a LocationElevationRequest object using the array's one value
  final positionalRequest = LocationElevationRequest()..locations = locations;

  // Initiate the location request
  elevator.getElevationForLocations(positionalRequest, (results, status) {
    if (status == ElevationStatus.OK) {
      // Retrieve the first result
      if (results.isNotEmpty) {
        // Open an info window indicating the elevation at the clicked position
        infowindow.content =
            'The elevation at this point <br>is ${results[0].elevation} meters.';
        infowindow.position = clickedLocation;
        infowindow.open(map);
      } else {
        window.alert('No results found');
      }
    } else {
      window.alert('Elevation service failed due to: $status');
    }
  });
}
