#import('dart:html');
#import('../../../gmaps.dart', prefix:'gmaps');

gmaps.DirectionsService directionsService;
gmaps.DirectionsRenderer directionsDisplay;
gmaps.GMap map;
gmaps.LatLng haight;
gmaps.LatLng oceanBeach;

void main() {
  directionsService = new gmaps.DirectionsService();
  haight = new gmaps.LatLng(37.7699298, -122.4469157);
  oceanBeach = new gmaps.LatLng(37.7683909618184, -122.51089453697205);
  
  directionsDisplay = new gmaps.DirectionsRenderer();
  final mapOptions = new gmaps.MapOptions()
    ..zoom = 14
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ..center = haight
    ;
  map = new gmaps.GMap(query("#map_canvas"), mapOptions);
  directionsDisplay.setMap(map);
  
  query('#mode').on.change.add((e) => calcRoute());
}

void calcRoute() {
  final selectedMode = (query('#mode') as SelectElement).value;
  final request = new gmaps.DirectionsRequest()
    ..origin = haight
    ..destination = oceanBeach
    ..travelMode = gmaps.TravelMode.find(selectedMode)
    ;
  directionsService.route(request, (gmaps.DirectionsResult response, gmaps.DirectionsStatus status) {
    if (status == gmaps.DirectionsStatus.OK) {
      directionsDisplay.setDirections(response);
    }
  });
}