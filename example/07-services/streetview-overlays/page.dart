import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/google_maps.dart';

GMap map;
StreetViewPanorama panorama;
final LatLng astorPlace = jsw.retain(new LatLng(40.729884, -73.990988));
final LatLng busStop = jsw.retain(new LatLng(40.729559678851025, -73.99074196815491));
final LatLng cafe = jsw.retain(new LatLng(40.730031233910694, -73.99142861366272));
final LatLng bank = jsw.retain(new LatLng(40.72968163306612, -73.9911389350891));

void main() {
  js.scoped(() {
    // Set up the map
    final mapOptions = new MapOptions()
      ..center = astorPlace
      ..zoom = 18
      ..mapTypeId = MapTypeId.ROADMAP
      ..streetViewControl = false
      ;
    map = jsw.retain(new GMap(query('#map_canvas'), mapOptions));

    // Setup the markers on the map
    final cafeMarkerImage = new MarkerImage('http://chart.apis.google.com/chart?chst=d_map_pin_icon&chld=cafe|FFFF00');
    final cafeMarker = new Marker(new MarkerOptions()
      ..position = cafe
      ..map = map
      ..icon = cafeMarkerImage
      ..title = 'Cafe'
    );

    final bankMarkerImage = new MarkerImage('http://chart.apis.google.com/chart?chst=d_map_pin_icon&chld=dollar|FFFF00');
    final bankMarker = new Marker(new MarkerOptions()
      ..position = bank
      ..map = map
      ..icon = bankMarkerImage
      ..title = 'Bank'
    );

    final busMarkerImage = new MarkerImage('http://chart.apis.google.com/chart?chst=d_map_pin_icon&chld=bus|FFFF00');
    final busMarker = new Marker(new MarkerOptions()
      ..position = busStop
      ..map = map
      ..icon = busMarkerImage
      ..title = 'Bus Stop'
    );

    // We get the map's default panorama and set up some defaults.
    // Note that we don't yet set it visible.
    panorama = jsw.retain(map.streetView);
    panorama.position = astorPlace;
    panorama.pov = new StreetViewPov()
      ..heading = 265
      ..zoom = 1
      ..pitch = 0
    ;

    query("#toggleStreetView").on.click.add((e) => toggleStreetView());
  });
}

void toggleStreetView() {
  js.scoped(() {
    var toggle = panorama.visible;
    if (toggle == false) {
      panorama.visible = true;
    } else {
      panorama.visible = false;
    }
  });
}