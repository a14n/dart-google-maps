import 'dart:html' hide Events;
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 8
    ..center = new LatLng(-34.397, 150.644);

  final mapDiv = document.getElementById('map-canvas');
  new GMap(mapDiv, mapOptions);

  // We add a DOM event here to show an alert if the DIV containing the
  // map is clicked. Note that we do this within the intialize function
  // since the document object isn't loaded until after the window.load
  // event.
  event.addDomListener(mapDiv, 'click', (e) {
    window.alert('DIV clicked');
  });
}
