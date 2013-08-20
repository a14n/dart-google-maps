import 'dart:html' hide Events;
import 'package:js/js.dart' as js;
import 'package:google_maps/google_maps.dart';

GMap map;
final LatLng chicago = js.retain(new LatLng(41.850033, -87.6500523));

/**
 * The HomeControl adds a control to the map that simply
 * returns the user to Chicago. This constructor takes
 * the control DIV as an argument.
 */
class HomeControl {
  HomeControl(Element controlDiv, GMap map) {
    // Set CSS styles for the DIV containing the control
    // Setting padding to 5 px will offset the control
    // from the edge of the map
    controlDiv.style.padding = '5px';

    // Set CSS for the control border
    final controlUI = new DivElement();
    controlUI.style
      ..backgroundColor = 'white'
      ..borderStyle = 'solid'
      ..borderWidth = '2px'
      ..cursor = 'pointer'
      ..textAlign = 'center'
      ;
    controlUI.title = 'Click to set the map to Home';
    controlDiv.children.add(controlUI);

    // Set CSS for the control interior
    final controlText = new DivElement();
    controlText.style
      ..fontFamily = 'Arial,sans-serif'
      ..fontSize = '12px'
      ..paddingLeft = '4px'
      ..paddingRight = '4px'
      ;
    controlText.innerHtml = '<b>Home</b>';
    controlUI.children.add(controlText);

    // Setup the click event listeners: simply set the map to
    // Chicago
    js.retain(map);
    event.addDomListener(controlUI, 'click', (e) {
      map.center = chicago;
    });
  }
}

void main() {
  final mapDiv = query("#map_canvas");
  final mapOptions = new MapOptions()
    ..zoom = 12
    ..center = chicago
    ..mapTypeId = MapTypeId.ROADMAP
    ;
  map = js.retain(new GMap(mapDiv, mapOptions));

  // Create the DIV to hold the control and
  // call the HomeControl() constructor passing
  // in this DIV.
  var homeControlDiv = new DivElement();
  var homeControl = new HomeControl(homeControlDiv, map);

  homeControlDiv.attributes["index"] = 1.toString();
  map.controls.getNodes(ControlPosition.TOP_RIGHT).push(homeControlDiv);
}
