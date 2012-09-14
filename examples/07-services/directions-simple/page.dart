#import('dart:html');
#import('../../../gmaps.dart', prefix:'gmaps');

gmaps.DirectionsService directionsService;
gmaps.DirectionsRenderer directionsDisplay;
gmaps.GMap map;

void main() {
  directionsService = new gmaps.DirectionsService();
  directionsDisplay = new gmaps.DirectionsRenderer();
  final chicago = new gmaps.LatLng(41.850033, -87.6500523);
  final mapOptions = new gmaps.MapOptions()
    ..zoom = 7
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ..center = chicago
    ;
  map = new gmaps.GMap(query("#map_canvas"), mapOptions);
  directionsDisplay.setMap(map);
  
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