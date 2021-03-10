import 'dart:html' hide Events;

import 'package:google_maps/google_maps.dart';

late GMap map;
final LatLng chicago = LatLng(41.85, -87.65);

/// The CenterControl adds a control to the map that
/// returns the user to the control's defined home.
class CenterControl {
  CenterControl(Element controlDiv, GMap map, this.center) {
    controlDiv.style.clear = 'both';

    // Set CSS for the control border
    final goCenterUI = DivElement()
      ..id = 'goCenterUI'
      ..title = 'Click to recenter the map';
    controlDiv.children.add(goCenterUI);

    // Set CSS for the control interior
    final goCenterText = DivElement()
      ..id = 'goCenterText'
      ..innerHtml = 'Center Map';
    goCenterUI.children.add(goCenterText);

    // Set CSS for the setCenter control border
    final setCenterUI = DivElement()
      ..id = 'setCenterUI'
      ..title = 'Click to change the center of the map';
    controlDiv.children.add(setCenterUI);

    // Set CSS for the control interior
    final setCenterText = DivElement()
      ..id = 'setCenterText'
      ..innerHtml = 'Set Center';
    setCenterUI.children.add(setCenterText);

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

  LatLng? center;
}

void main() {
  map = GMap(
      document.getElementById('map'),
      MapOptions()
        ..zoom = 12
        ..center = chicago);

  // Create the DIV to hold the control and
  // call the HomeControl() constructor passing
  // in this DIV.
  final centerControlDiv = DivElement();
  CenterControl(centerControlDiv, map, chicago);
  centerControlDiv.attributes['index'] = '1';
  centerControlDiv.style.paddingTop = '10px';
  map.controls![ControlPosition.TOP_CENTER as int]!.push(centerControlDiv);
}
