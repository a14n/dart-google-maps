import 'dart:convert';
import 'dart:html';

import 'package:google_maps/google_maps.dart';

void main() {
  final myLatLng = LatLng(-25.363, 131.044);
  final map = GMap(
    document.getElementById('map') as HtmlElement,
    MapOptions()
      ..zoom = 4
      ..center = myLatLng,
  );

  // Create the initial InfoWindow.
  var infoWindow = InfoWindow(InfoWindowOptions()
    ..content = 'Click the map to get Lat/Lng!'
    ..position = myLatLng)
    ..open(map);
  // Configure the click listener.
  map.onClick.listen((mapsMouseEvent) {
    // Close the current InfoWindow.
    infoWindow.close();
    // Create a new InfoWindow.
    infoWindow =
        InfoWindow(InfoWindowOptions()..position = mapsMouseEvent.latLng)
          ..content = (json.encode({
            'lat': mapsMouseEvent.latLng!.lat,
            'lng': mapsMouseEvent.latLng!.lng,
          }))
          ..open(map);
  });
}
