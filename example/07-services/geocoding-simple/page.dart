import 'dart:html';

import 'package:google_maps/google_maps.dart';

final geocoder = new Geocoder();
GMap map;

void main() {
  final latlng = new LatLng(-34.397, 150.644);
  final mapOptions = new MapOptions()
    ..zoom = 8
    ..center = latlng;
  map = new GMap(document.getElementById('map-canvas'), mapOptions);

  document.getElementById('codeAddress').onClick.listen(codeAddress);
}

void codeAddress(_) {
  final address = (document.getElementById('address') as InputElement).value;
  final request = new GeocoderRequest()..address = address;
  geocoder.geocode(request, (results, status) {
    if (status == GeocoderStatus.OK) {
      map.center = results[0].geometry.location;
      new Marker(new MarkerOptions()
        ..map = map
        ..position = results[0].geometry.location);
    } else {
      window.alert(
          'Geocode was not successful for the following reason: $status');
    }
  });
}
