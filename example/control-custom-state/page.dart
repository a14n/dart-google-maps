import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

late Map map;
final LatLng chicago = LatLng(41.85, -87.65);

/// The CenterControl adds a control to the map that
/// returns the user to the control's defined home.
class CenterControl {
  CenterControl(HTMLDivElement controlDiv, Map map, this.center) {
    controlDiv.style.clear = 'both';

    // Set CSS for the control border
    final goCenterUI = document.createElement('div') as HTMLDivElement
      ..id = 'goCenterUI'
      ..title = 'Click to recenter the map';
    controlDiv.appendChild(goCenterUI);

    // Set CSS for the control interior
    final goCenterText = document.createElement('div') as HTMLDivElement
      ..id = 'goCenterText'
      ..text = 'Center Map';
    goCenterUI.appendChild(goCenterText);

    // Set CSS for the setCenter control border
    final setCenterUI = document.createElement('div') as HTMLDivElement
      ..id = 'setCenterUI'
      ..title = 'Click to change the center of the map';
    controlDiv.appendChild(setCenterUI);

    // Set CSS for the control interior
    final setCenterText = document.createElement('div') as HTMLDivElement
      ..id = 'setCenterText'
      ..text = 'Set Center';
    setCenterUI.appendChild(setCenterText);

    // Setup the click event listener for Home:
    // simply set the map to the control's current home property.
    goCenterUI.onClick.listen((e) {
      map.center = center;
    });
    // Setup the click event listener for Set Home:
    // Set the control's home to the current Map center.
    setCenterUI.onClick.listen((e) {
      center = map.center;
    });
  }

  LatLng center;
}

void main() {
  map = Map(
      document.getElementById('map') as HTMLElement,
      MapOptions()
        ..zoom = 12
        ..center = chicago);

  // Create the DIV to hold the control and
  // call the HomeControl() constructor passing
  // in this DIV.
  final centerControlDiv = document.createElement('div') as HTMLDivElement;
  CenterControl(centerControlDiv, map, chicago);
  centerControlDiv.setAttribute('index', '1');
  centerControlDiv.style.paddingTop = '10px';
  map.getControlsAt(ControlPosition.TOP_CENTER).push(centerControlDiv);
}
