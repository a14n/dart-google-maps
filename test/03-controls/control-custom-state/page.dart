#import('dart:html');
#import('dart:math');
#import('../../../gmaps.dart', prefix:'gmaps');

gmaps.GMap map;
gmaps.LatLng chicago;

/**
 * The HomeControl adds a control to the map that
 * returns the user to the control's defined home.
 */
class HomeControl {
  gmaps.LatLng _home;

  HomeControl(Element controlDiv, gmaps.GMap map, gmaps.LatLng home) {
    this._home = home;

    // Set CSS styles for the DIV containing the control
    // Setting padding to 5 px will offset the control
    // from the edge of the map
    controlDiv.style.padding = '5px';

    // Set CSS for the control border
    final goHomeUI = new DivElement();
    goHomeUI.style.backgroundColor = 'white';
    goHomeUI.style.borderStyle = 'solid';
    goHomeUI.style.borderWidth = '2px';
    goHomeUI.style.cursor = 'pointer';
    goHomeUI.style.textAlign = 'center';
    goHomeUI.title = 'Click to set the map to Home';
    controlDiv.elements.add(goHomeUI);

    // Set CSS for the control interior
    final goHomeText = new DivElement();
    goHomeText.style.fontFamily = 'Arial,sans-serif';
    goHomeText.style.fontSize = '12px';
    goHomeText.style.paddingLeft = '4px';
    goHomeText.style.paddingRight = '4px';
    goHomeText.innerHTML = '<b>Home</b>';
    goHomeUI.elements.add(goHomeText);

    // Set CSS for the setHome control border
    final setHomeUI = new DivElement();
    setHomeUI.style.backgroundColor = 'white';
    setHomeUI.style.borderStyle = 'solid';
    setHomeUI.style.borderWidth = '2px';
    setHomeUI.style.cursor = 'pointer';
    setHomeUI.style.textAlign = 'center';
    setHomeUI.title = 'Click to set Home to the current center';
    controlDiv.elements.add(setHomeUI);

    // Set CSS for the control interior
    final setHomeText = new DivElement();
    setHomeText.style.fontFamily = 'Arial,sans-serif';
    setHomeText.style.fontSize = '12px';
    setHomeText.style.paddingLeft = '4px';
    setHomeText.style.paddingRight = '4px';
    setHomeText.innerHTML = '<b>Set Home</b>';
    setHomeUI.elements.add(setHomeText);

    // Setup the click event listener for Home:
    // simply set the map to the control's current home property.
    gmaps.Events.addDomListener(goHomeUI, 'click', (e) {
      map.setCenter(_home);
    });

    // Setup the click event listener for Set Home:
    // Set the control's home to the current Map center.
    gmaps.Events.addDomListener(setHomeUI, 'click', (e) {
      _home = map.getCenter();
    });
  }
}

void main() {
  chicago = new gmaps.LatLng(41.850033, -87.6500523);

  final mapDiv = query("#map_canvas");
  final mapOptions = new gmaps.MapOptions();
  mapOptions.zoom = 12;
  mapOptions.center = chicago;
  mapOptions.mapTypeId = gmaps.MapTypeId.ROADMAP;
  map = new gmaps.GMap(mapDiv, mapOptions);

  // Create the DIV to hold the control and
  // call the HomeControl() constructor passing
  // in this DIV.
  var homeControlDiv = new DivElement();
  var homeControl = new HomeControl(homeControlDiv, map, chicago);

  homeControlDiv.attributes["index"] = 1.toString();
  map.controls.getNodes(gmaps.ControlPosition.TOP_RIGHT).push(homeControlDiv);
}
