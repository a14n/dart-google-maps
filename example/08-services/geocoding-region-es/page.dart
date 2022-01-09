import 'dart:html';

import 'package:google_maps/google_maps.dart';

late Geocoder geocoder;
late GMap map;
const query = 'Toledo';

void main() {
  geocoder = Geocoder();
  final mapOptions = MapOptions()..zoom = 8;
  map = GMap(document.getElementById('map-canvas') as HtmlElement, mapOptions);
  codeAddress();
}

void codeAddress() {
  geocoder.geocode(GeocoderRequest()..address = query, (results, status) {
    if (status == GeocoderStatus.OK) {
      map.center = results![0]!.geometry!.location;
      Marker(MarkerOptions()
        ..map = map
        ..position = results[0]!.geometry!.location);
    } else {
      window.alert(
          'Geocode was not successful for the following reason: $status');
    }
  });
}
