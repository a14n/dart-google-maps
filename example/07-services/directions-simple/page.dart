#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:google_maps/jswrap.dart', prefix:'jsw');
#import('package:google_maps/gmaps.dart', prefix:'gmaps');

gmaps.DirectionsRenderer directionsDisplay;
final gmaps.DirectionsService directionsService = jsw.retain(new gmaps.DirectionsService());
gmaps.GMap map;

void main() {
  js.scoped(() {
    directionsDisplay = jsw.retain(new gmaps.DirectionsRenderer());
    final chicago = new gmaps.LatLng(41.850033, -87.6500523);
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 7
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ..center = chicago
      ;
    map = jsw.retain(new gmaps.GMap(query("#map_canvas"), mapOptions));
    directionsDisplay.map = map;

    query('#start').on.change.add((e) => calcRoute());
    query('#end').on.change.add((e) => calcRoute());
  });
}

void calcRoute() {
  js.scoped(() {
    final start = (query('#start') as SelectElement).value;
    final end = (query('#end') as SelectElement).value;
    final request = new gmaps.DirectionsRequest()
      ..origin = start
      ..destination = end
      ..travelMode = gmaps.TravelMode.DRIVING // TODO bad object in example DirectionsTravelMode
      ;
    directionsService.route(request, (gmaps.DirectionsResult response, gmaps.DirectionsStatus status) {
      if (status == gmaps.DirectionsStatus.OK) {
        directionsDisplay.directions = response;
      }
    });
  });
}