import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart' as gmaps;

gmaps.ElevationService elevator;
gmaps.GMap map;
final gmaps.InfoWindow infowindow = jsw.retain(new gmaps.InfoWindow());
final gmaps.LatLng denali = jsw.retain(new gmaps.LatLng(63.3333333, -150.5));

void main() {
  js.scoped(() {
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 8
      ..center = denali
      ..mapTypeId = gmaps.MapTypeId.TERRAIN
      ;
    map = jsw.retain(new gmaps.GMap(query("#map_canvas"), mapOptions));

    // Create an ElevationService
    elevator = jsw.retain(new gmaps.ElevationService());

    // Add a listener for the click event and call getElevation on that location
    map.on.click.add(getElevation);
  });
}


void getElevation(gmaps.MouseEvent e) {
  final locations = new List<gmaps.LatLng>();

  // Retrieve the clicked location and push it on the array
  final gmaps.LatLng clickedLocation = jsw.retain(e.latLng);
  locations.add(clickedLocation);

  // Create a LocationElevationRequest object using the array's one value
  var positionalRequest = new gmaps.LocationElevationRequest()
    ..locations = locations
    ;

  // Initiate the location request
  elevator.getElevationForLocations(positionalRequest, (List<gmaps.ElevationResult> results, gmaps.ElevationStatus status) {
    if (status == gmaps.ElevationStatus.OK) {

      // Retrieve the first result
      if (!results.isEmpty()) {

        // Open an info window indicating the elevation at the clicked position
        infowindow.content = 'The elevation at this point <br>is ${results[0].elevation} meters.';
        infowindow.position = clickedLocation;
        jsw.release(clickedLocation);
        infowindow.open(map);
      } else {
        window.alert('No results found');
      }
    } else {
      window.alert('Elevation service failed due to: ${status}');
    }
  });
}