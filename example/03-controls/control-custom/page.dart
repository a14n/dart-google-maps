import 'dart:html' hide Events;
import 'package:google_maps/google_maps.dart';

GMap map;
final LatLng chicago = new LatLng(41.850033, -87.6500523);

/**
 * The CenterControl adds a control to the map that recenters the map on
 * Chicago.
 * This constructor takes the control DIV as an argument.
 */
class CenterControl {
  CenterControl(Element controlDiv, GMap map) {

    // Set CSS for the control border
    final controlUI = new DivElement();
    controlUI.style
      ..backgroundColor = '#fff'
      ..border = '2px solid #fff'
      ..borderRadius = '3px'
      ..boxShadow = '0 2px 6px rgba(0,0,0,.3)'
      ..cursor = 'pointer'
      ..marginBottom = '22px'
      ..textAlign = 'center';
    controlUI.title = 'Click to recenter the map';
    controlDiv.children.add(controlUI);

    // Set CSS for the control interior
    final controlText = new DivElement();
    controlText.style
      ..color = 'rgb(25,25,25)'
      ..fontFamily = 'Roboto,Arial,sans-serif'
      ..fontSize = '16px'
      ..lineHeight = '38px'
      ..paddingLeft = '5px'
      ..paddingRight = '5px';
    controlText.innerHtml = 'Center Map';
    controlUI.children.add(controlText);

    // Setup the click event listeners: simply set the map to
    // Chicago
    event.addDomListener(controlUI, 'click', (e) {
      map.center = chicago;
    });
  }
}

void main() {
  final mapDiv = document.getElementById('map-canvas');
  final mapOptions = new MapOptions()
    ..zoom = 12
    ..center = chicago;
  map = new GMap(mapDiv, mapOptions);

  // Create the DIV to hold the control and
  // call the HomeControl() constructor passing
  // in this DIV.
  var centerControlDiv = new DivElement();
  new CenterControl(centerControlDiv, map);

  centerControlDiv.attributes["index"] = '1';
  map.controls[ControlPosition.BOTTOM_LEFT].push(centerControlDiv);

  print(map.controls.length);
}
