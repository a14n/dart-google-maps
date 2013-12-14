import 'dart:html';

import 'package:google_maps/google_maps.dart';

Geocoder geocoder;
GMap map;

void main() {
  geocoder = new Geocoder();
  final latlng = new LatLng(-34.397, 150.644);
  final mapOptions = new MapOptions()
    ..zoom = 8
    ..center = latlng
    ..mapTypeId = MapTypeId.ROADMAP
    ;
  map = new GMap(querySelector("#map_canvas"), mapOptions);

  querySelector("#codeAddress").onClick.listen((e) => codeAddress());
}

void codeAddress() {
  final address = (querySelector('#address') as InputElement).value;
  final request = new GeocoderRequest()
    ..address = address
    ;
  geocoder.geocode(request, (List<GeocoderResult> results, GeocoderStatus status) {
    if (status == GeocoderStatus.OK) {
      map.center = results[0].geometry.location;
      final marker = new Marker(new MarkerOptions()
        ..map = map
        ..position = results[0].geometry.location
      );
    } else {
      window.alert('Geocode was not successful for the following reason: ${status}');
    }
  });
}