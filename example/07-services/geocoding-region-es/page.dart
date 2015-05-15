import 'dart:html';

import 'package:google_maps/google_maps.dart';

Geocoder geocoder;
GMap map;
const query = 'Toledo';

void main() {
  geocoder = new Geocoder();
  final mapOptions = new MapOptions()..zoom = 8;
  map = new GMap(document.getElementById('map-canvas'), mapOptions);
  codeAddress();
}

void codeAddress() {
  geocoder.geocode(new GeocoderRequest()..address = query, (results, status) {
    if (status == GeocoderStatus.OK) {
      map.center = results[0].geometry.location;
      new Marker(new MarkerOptions()
        ..map = map
        ..position = results[0].geometry.location);
    } else {
      window.alert(
          'Geocode was not successful for the following reason: ${status}');
    }
  });
}
