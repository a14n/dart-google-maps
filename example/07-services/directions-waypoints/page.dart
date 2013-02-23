import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/js_wrap.dart' as jsw;
import 'package:google_maps/google_maps.dart';

DirectionsRenderer directionsDisplay;
final DirectionsService directionsService = jsw.retain(new DirectionsService());
GMap map;

void main() {
  js.scoped(() {
    directionsDisplay = jsw.retain(new DirectionsRenderer());
    final chicago = new LatLng(41.850033, -87.6500523);
    final mapOptions = new MapOptions()
      ..zoom = 6
      ..mapTypeId = MapTypeId.ROADMAP
      ..center = chicago
      ;
    map = jsw.retain(new GMap(query("#map_canvas"), mapOptions));
    directionsDisplay.map = map;

    query('#calcRoute').onClick.listen((e) => calcRoute());
  });
}

void calcRoute() {
  js.scoped(() {
    final start = (query('#start') as SelectElement).value;
    final end = (query('#end') as SelectElement).value;
    final waypts = new List<DirectionsWaypoint>();
    final checkboxArray = query('#waypoints') as SelectElement;
    for (final OptionElement option in checkboxArray.options) {
      if (option.selected) {
        waypts.add(new DirectionsWaypoint()
          ..location = option.value
          ..stopover = true
        );
      }
    }

    final request = new DirectionsRequest()
      ..origin = start
      ..destination = end
      ..waypoints = waypts
      ..optimizeWaypoints = true
      ..travelMode = TravelMode.DRIVING // TODO bad object in example DirectionsTravelMode
      ;
    directionsService.route(request, (DirectionsResult response, DirectionsStatus status) {
      if (status == DirectionsStatus.OK) {
        directionsDisplay.directions = response;
        final route = response.routes[0];
        final summaryPanel = query('#directions_panel');
        final html = new StringBuffer();
        // For each route, display summary information.
        for (var i = 0; i < route.legs.length; i++) {
          final leg = route.legs[i];
          final routeSegment = i + 1;
          html.write('<b>Route Segment: ${routeSegment}</b><br>');
          html.write('${leg.startAddress} to ');
          html.write('${leg.endAddress}<br>');
          html.write('${leg.distance.text}<br><br>');
        }
        summaryPanel.innerHtml = html.toString();
      }
    });
  });
}