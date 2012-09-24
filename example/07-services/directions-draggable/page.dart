#import('dart:html');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

final rendererOptions = new gmaps.DirectionsRendererOptions()
  ..draggable = true
  ;
final directionsDisplay = new gmaps.DirectionsRenderer(rendererOptions);
final directionsService = new gmaps.DirectionsService();
gmaps.GMap map;

final australia = new gmaps.LatLng(-25.274398, 133.775136);

void main() {
  final mapOptions = new gmaps.MapOptions()
    ..zoom = 7
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ..center = australia
    ;
  map = new gmaps.GMap(query("#map_canvas"), mapOptions);
  directionsDisplay.setMap(map);
  directionsDisplay.setPanel(query('#directionsPanel'));

  gmaps.Events.addListener(directionsDisplay, 'directions_changed', (e) {
    computeTotalDistance(directionsDisplay.getDirections());
  });

  calcRoute();
}

void calcRoute() {
  final request = new gmaps.DirectionsRequest()
    ..origin = 'Sydney, NSW'
    ..destination = 'Sydney, NSW'
    ..waypoints = [
      new gmaps.DirectionsWaypoint()..location = 'Bourke, NSW',
      new gmaps.DirectionsWaypoint()..location = 'Broken Hill, NSW'
    ]
    ..travelMode = gmaps.TravelMode.DRIVING // TODO bad object in example DirectionsTravelMode
    ;
  directionsService.route(request, (gmaps.DirectionsResult response, gmaps.DirectionsStatus status) {
    if (status == gmaps.DirectionsStatus.OK) {
      directionsDisplay.setDirections(response);
    }
  });
}

void computeTotalDistance(gmaps.DirectionsResult result) {
  num total = 0;
  final myroute = result.routes[0];
  for (int i = 0; i < myroute.legs.length; i++) {
    total += myroute.legs[i].distance.value;
  }
  total = total / 1000.0;  // TODO bad synthax in example
  query('#total').innerHTML = '${total} km';
}