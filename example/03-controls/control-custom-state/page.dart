#import('dart:html');
#import('dart:math');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

gmaps.GMap map;
final gmaps.LatLng chicago = jsw.retain(new gmaps.LatLng(41.850033, -87.6500523));

/**
 * The HomeControl adds a control to the map that
 * returns the user to the control's defined home.
 */
class HomeControl {
  gmaps.LatLng _home;

  HomeControl(Element controlDiv, gmaps.GMap map, gmaps.LatLng home) {
    this._home = jsw.retain(home);

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
    controlDiv.elements.add(goHomeUI);

    // Set CSS for the control interior
    final goHomeText = new DivElement();
    goHomeText.style
      ..fontFamily = 'Arial,sans-serif'
      ..fontSize = '12px'
      ..paddingLeft = '4px'
      ..paddingRight = '4px'
      ;
    goHomeText.innerHTML = '<b>Home</b>';
    goHomeUI.elements.add(goHomeText);

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
    controlDiv.elements.add(setHomeUI);

    // Set CSS for the control interior
    final setHomeText = new DivElement();
    setHomeText.style
      ..fontFamily = 'Arial,sans-serif'
      ..fontSize = '12px'
      ..paddingLeft = '4px'
      ..paddingRight = '4px'
      ;
    setHomeText.innerHTML = '<b>Set Home</b>';
    setHomeUI.elements.add(setHomeText);

    // Setup the click event listener for Home:
    // simply set the map to the control's current home property.
    jsw.retainAll([map]);
    gmaps.Events.addDomListener(goHomeUI, 'click', (e) {
      map.setCenter(_home);
    });

    // Setup the click event listener for Set Home:
    // Set the control's home to the current Map center.
    jsw.retainAll([map]);
    gmaps.Events.addDomListener(setHomeUI, 'click', (e) {
      jsw.release(_home);
      _home = jsw.retain(map.getCenter());
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
    var homeControl = new HomeControl(homeControlDiv, map, chicago);

    homeControlDiv.attributes["index"] = 1.toString();
    map.controls.getNodes(gmaps.ControlPosition.TOP_RIGHT).push(homeControlDiv);
  });
}
