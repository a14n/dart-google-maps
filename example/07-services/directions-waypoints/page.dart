#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

gmaps.DirectionsRenderer directionsDisplay;
final gmaps.DirectionsService directionsService = jsw.retain(new gmaps.DirectionsService());
gmaps.GMap map;

void main() {
  js.scoped(() {
    directionsDisplay = jsw.retain(new gmaps.DirectionsRenderer());
    final chicago = new gmaps.LatLng(41.850033, -87.6500523);
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 6
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ..center = chicago
      ;
    map = jsw.retain(new gmaps.GMap(query("#map_canvas"), mapOptions));
    directionsDisplay.setMap(map);

    query('#calcRoute').on.click.add((e) => calcRoute());
  });
}

void calcRoute() {
  js.scoped(() {
    final start = (query('#start') as SelectElement).value;
    final end = (query('#end') as SelectElement).value;
    final waypts = new List<gmaps.DirectionsWaypoint>();
    final checkboxArray = query('#waypoints') as SelectElement;
    for (final OptionElement option in checkboxArray.options) {
      if (option.selected) {
        waypts.add(new gmaps.DirectionsWaypoint()
          ..location = option.value
          ..stopover = true
        );
      }
    }

    final request = new gmaps.DirectionsRequest()
      ..origin = start
      ..destination = end
      ..waypoints = waypts
      ..optimizeWaypoints = true
      ..travelMode = gmaps.TravelMode.DRIVING // TODO bad object in example DirectionsTravelMode
      ;
    directionsService.route(request, (gmaps.DirectionsResult response, gmaps.DirectionsStatus status) {
      if (status == gmaps.DirectionsStatus.OK) {
        directionsDisplay.setDirections(response);
        final route = response.routes[0];
        final summaryPanel = query('#directions_panel');
        final html = new StringBuffer();
        // For each route, display summary information.
        for (var i = 0; i < route.legs.length; i++) {
          final leg = route.legs[i];
          final routeSegment = i + 1;
          html.add('<b>Route Segment: ${routeSegment}</b><br>');
          html.add('${leg.start_address} to ');
          html.add('${leg.end_address}<br>');
          html.add('${leg.distance.text}<br><br>');
        }
        summaryPanel.innerHTML = html.toString();
      }
    });
  });
}