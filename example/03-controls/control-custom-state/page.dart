import 'dart:html' hide Events;
import 'package:google_maps/google_maps.dart';

GMap map;
final LatLng chicago = new LatLng(41.850033, -87.6500523);

/**
 * The HomeControl adds a control to the map that
 * returns the user to the control's defined home.
 */
class HomeControl {
  LatLng center;

  HomeControl(Element controlDiv, GMap map, this.center) {
    controlDiv.style.clear = 'both';

    // Set CSS for the control border
    final goCenterUI = new DivElement();
    goCenterUI.style
      ..backgroundColor = '#fff'
      ..border = '2px solid #fff'
      ..borderRadius = '3px'
      ..boxShadow = '0 2px 6px rgba(0,0,0,.3)'
      ..cursor = 'pointer'
      ..float = 'left'
      ..marginBottom = '22px'
      ..textAlign = 'center';
    goCenterUI.title = 'Click to recenter the map';
    controlDiv.children.add(goCenterUI);

    // Set CSS for the control interior
    final goCenterText = new DivElement();
    goCenterText.style
      ..color = 'rgb(25,25,25)'
      ..fontFamily = 'Roboto,Arial,sans-serif'
      ..fontSize = '16px'
      ..lineHeight = '38px'
      ..paddingLeft = '5px'
      ..paddingRight = '5px';
    goCenterText.innerHtml = 'Center Map';
    goCenterUI.children.add(goCenterText);

    // Set CSS for the setCenter control border
    final setCenterUI = new DivElement();
    setCenterUI.style
      ..backgroundColor = '#fff'
      ..border = '2px solid #fff'
      ..borderRadius = '3px'
      ..boxShadow = '0 2px 6px rgba(0,0,0,.3)'
      ..cursor = 'pointer'
      ..float = 'left'
      ..marginBottom = '22px'
      ..marginLeft = '12px'
      ..textAlign = 'center';
    setCenterUI.title = 'Click to change the center of the map';
    controlDiv.children.add(setCenterUI);

    // Set CSS for the control interior
    final setCenterText = new DivElement();
    setCenterText.style
      ..color = 'rgb(25,25,25)'
      ..fontFamily = 'Roboto,Arial,sans-serif'
      ..fontSize = '16px'
      ..lineHeight = '38px'
      ..paddingLeft = '5px'
      ..paddingRight = '5px';
    setCenterText.innerHtml = 'Set Center';
    setCenterUI.children.add(setCenterText);

    // Setup the click event listener for Home:
    // simply set the map to the control's current home property.
    event.addDomListener(goCenterUI, 'click', (e) {
      map.center = center;
    });

    // Setup the click event listener for Set Home:
    // Set the control's home to the current Map center.
    event.addDomListener(setCenterUI, 'click', (e) {
      center = map.center;
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
  var homeControlDiv = new DivElement();
  new HomeControl(homeControlDiv, map, chicago);

  homeControlDiv.attributes["index"] = '1';
  map.controls[ControlPosition.BOTTOM_LEFT].push(homeControlDiv);
}
