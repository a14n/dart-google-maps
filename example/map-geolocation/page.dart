import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

late Map map;
late InfoWindow infoWindow;

void main() {
  map = Map(
    document.getElementById('map') as HTMLElement,
    MapOptions()
      ..center = LatLng(-34.397, 150.644)
      ..zoom = 6,
  );
  infoWindow = InfoWindow();
  final locationButton = (document.createElement('button') as HTMLButtonElement)
    ..textContent = 'Pan to Current Location'
    ..classList.add('custom-map-control-button');
  map.getControlsAt(ControlPosition.TOP_CENTER).push(locationButton);
  locationButton.onClick.listen((_) async {
    // Try HTML5 geolocation.
    // ignore: unnecessary_null_comparison
    if (window.navigator.geolocation != null) {
      window.navigator.geolocation.getCurrentPosition(
        (GeolocationPosition position) {
          final pos =
              LatLng(position.coords.latitude, position.coords.longitude);
          infoWindow
            ..position = pos
            ..content = 'Location found.'.toJS
            ..open(map);
          map.center = pos;
        }.toJS,
        () {
          handleLocationError(true, infoWindow, map.center);
        }.toJS,
      );
    } else {
      // Browser doesn't support Geolocation
      handleLocationError(false, infoWindow, map.center);
    }
  });
}

void handleLocationError(
    bool browserHasGeolocation, InfoWindow infoWindow, LatLng pos) {
  infoWindow
    ..position = pos
    ..content = browserHasGeolocation
        ? 'Error: The Geolocation service failed.'.toJS
        : "Error: Your browser doesn't support geolocation.".toJS
    ..open(map);
}
