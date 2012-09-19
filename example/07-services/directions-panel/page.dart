#import('dart:html');
#import('../../../lib/gmaps.dart', prefix:'gmaps');

gmaps.DirectionsRenderer directionsDisplay;
gmaps.DirectionsService directionsService;

void main() {
  directionsService = new gmaps.DirectionsService();
  directionsDisplay = new gmaps.DirectionsRenderer();
  final mapOptions = new gmaps.MapOptions()
    ..zoom = 7
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ..center = new gmaps.LatLng(41.850033, -87.6500523)
    ;
  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);
  directionsDisplay.setMap(map);
  directionsDisplay.setPanel(query('#directions-panel'));

  final control = query('#control');
  control.style.display = 'block';
  map.controls.getNodes(gmaps.ControlPosition.TOP_CENTER).push(control);

  query('#start').on.change.add((e) => calcRoute());
  query('#end').on.change.add((e) => calcRoute());
}

void calcRoute() {
  final start = (query('#start') as SelectElement).value;
  final end = (query('#end') as SelectElement).value;
  final request = new gmaps.DirectionsRequest()
    ..origin = start
    ..destination = end
    ..travelMode = gmaps.TravelMode.DRIVING // TODO bad object in example DirectionsTravelMode
    ;
  directionsService.route(request, (gmaps.DirectionsResult response, gmaps.DirectionsStatus status) {
    if (status == gmaps.DirectionsStatus.OK) {
      directionsDisplay.setDirections(response);
    }
  });
}