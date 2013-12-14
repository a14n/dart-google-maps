import 'dart:html' hide Events;
import 'package:google_maps/google_maps.dart';

GMap map;
final LatLng chicago = new LatLng(41.850033, -87.6500523);

/**
 * The HomeControl adds a control to the map that
 * returns the user to the control's defined home.
 */
class HomeControl {
  LatLng _home;

  HomeControl(Element controlDiv, GMap map, this._home) {
    // Set CSS styles for the DIV containing the control
    // Setting padding to 5 px will offset the control
    // from the edge of the map
    controlDiv.style.padding = '5px';

    // Set CSS for the control border
    final goHomeUI = new DivElement();
    goHomeUI.style
      ..backgroundColor = 'white'
      ..borderStyle = 'solid'
      ..borderWidth = '2px'
      ..cursor = 'pointer'
      ..textAlign = 'center'
      ;
    goHomeUI.title = 'Click to set the map to Home';
    controlDiv.children.add(goHomeUI);

    // Set CSS for the control interior
    final goHomeText = new DivElement();
    goHomeText.style
      ..fontFamily = 'Arial,sans-serif'
      ..fontSize = '12px'
      ..paddingLeft = '4px'
      ..paddingRight = '4px'
      ;
    goHomeText.innerHtml = '<b>Home</b>';
    goHomeUI.children.add(goHomeText);

    // Set CSS for the setHome control border
    final setHomeUI = new DivElement();
    setHomeUI.style
      ..backgroundColor = 'white'
      ..borderStyle = 'solid'
      ..borderWidth = '2px'
      ..cursor = 'pointer'
      ..textAlign = 'center'
      ;
    setHomeUI.title = 'Click to set Home to the current center';
    controlDiv.children.add(setHomeUI);

    // Set CSS for the control interior
    final setHomeText = new DivElement();
    setHomeText.style
      ..fontFamily = 'Arial,sans-serif'
      ..fontSize = '12px'
      ..paddingLeft = '4px'
      ..paddingRight = '4px'
      ;
    setHomeText.innerHtml = '<b>Set Home</b>';
    setHomeUI.children.add(setHomeText);

    // Setup the click event listener for Home:
    // simply set the map to the control's current home property.
    event.addDomListener(goHomeUI, 'click', (e) {
      map.center = _home;
    });

    // Setup the click event listener for Set Home:
    // Set the control's home to the current Map center.
    event.addDomListener(setHomeUI, 'click', (e) {
      _home = map.center;
    });
  }
}

void main() {
  final mapDiv = querySelector("#map_canvas");
  final mapOptions = new MapOptions()
    ..zoom = 12
    ..center = chicago
    ..mapTypeId = MapTypeId.ROADMAP
    ;
  map = new GMap(mapDiv, mapOptions);

  // Create the DIV to hold the control and
  // call the HomeControl() constructor passing
  // in this DIV.
  var homeControlDiv = new DivElement();
  var homeControl = new HomeControl(homeControlDiv, map, chicago);

  homeControlDiv.attributes["index"] = 1.toString();
  map.controls[ControlPosition.TOP_RIGHT].push(homeControlDiv);
}
