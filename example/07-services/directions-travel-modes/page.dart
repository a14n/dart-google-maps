import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart' as gmaps;

gmaps.DirectionsRenderer directionsDisplay;
final gmaps.DirectionsService directionsService = jsw.retain(new gmaps.DirectionsService());
gmaps.GMap map;
final gmaps.LatLng haight = jsw.retain(new gmaps.LatLng(37.7699298, -122.4469157));
final gmaps.LatLng oceanBeach = jsw.retain(new gmaps.LatLng(37.7683909618184, -122.51089453697205));

void main() {
  js.scoped(() {
    directionsDisplay = jsw.retain(new gmaps.DirectionsRenderer());
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 14
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ..center = haight
      ;
    map = new gmaps.GMap(query("#map_canvas"), mapOptions);
    directionsDisplay.map = map;

    query('#mode').on.change.add((e) => calcRoute());
  });
}

void calcRoute() {
  js.scoped(() {
    final selectedMode = (query('#mode') as SelectElement).value;
    final request = new gmaps.DirectionsRequest()
      ..origin = haight
      ..destination = oceanBeach
      ..travelMode = gmaps.TravelMode.find(selectedMode)
      ;
    directionsService.route(request, (gmaps.DirectionsResult response, gmaps.DirectionsStatus status) {
      if (status == gmaps.DirectionsStatus.OK) {
        directionsDisplay.directions = response;
      }
    });
  });
}