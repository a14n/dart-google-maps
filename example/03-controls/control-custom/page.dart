#import('dart:html');
#import('dart:math');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

gmaps.GMap map;
final gmaps.LatLng chicago = jsw.retain(new gmaps.LatLng(41.850033, -87.6500523));

/**
 * The HomeControl adds a control to the map that simply
 * returns the user to Chicago. This constructor takes
 * the control DIV as an argument.
 */
class HomeControl {
  HomeControl(Element controlDiv, gmaps.GMap map) {
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
    controlDiv.elements.add(controlUI);

    // Set CSS for the control interior
    final controlText = new DivElement();
    controlText.style
      ..fontFamily = 'Arial,sans-serif'
      ..fontSize = '12px'
      ..paddingLeft = '4px'
      ..paddingRight = '4px'
      ;
    controlText.innerHTML = '<b>Home</b>';
    controlUI.elements.add(controlText);

    // Setup the click event listeners: simply set the map to
    // Chicago
    jsw.retain(map);
    gmaps.Events.addDomListener(controlUI, 'click', (e) {
      map.setCenter(chicago);
    });
  }
}

void main() {
  js.scoped(() {
    final mapDiv = query("#map_canvas");
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 12
      ..center = chicago
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;
    map = jsw.retain(new gmaps.GMap(mapDiv, mapOptions));

    // Create the DIV to hold the control and
    // call the HomeControl() constructor passing
    // in this DIV.
    var homeControlDiv = new DivElement();
    var homeControl = new HomeControl(homeControlDiv, map);

    homeControlDiv.attributes["index"] = 1.toString();
    map.controls.getNodes(gmaps.ControlPosition.TOP_RIGHT).push(homeControlDiv);
  });
}
