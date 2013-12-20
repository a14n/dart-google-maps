import 'dart:html';

import 'package:google_maps/google_maps.dart';

Geocoder geocoder;
GMap map;
final InfoWindow infowindow = new InfoWindow();
Marker marker;

void main() {
  geocoder = new Geocoder();
  final latlng = new LatLng(40.730885,-73.997383);
  final mapOptions = new MapOptions()
    ..zoom = 8
    ..center = latlng
    ..mapTypeId = MapTypeId.ROADMAP
    ;
  map = new GMap(querySelector("#map_canvas"), mapOptions);

  querySelector("#codeLatLng").onClick.listen((e) => codeLatLng());
}

void codeLatLng() {
  final input = (querySelector('#latlng') as InputElement).value;
  final latlngStr = input.split(',');
  final lat = double.parse(latlngStr[0]);
  final lng = double.parse(latlngStr[1]);
  final LatLng latlng = new LatLng(lat, lng);
  final request = new GeocoderRequest()
    ..location = latlng  // TODO bad variable "latlng" in example code
    ;
  geocoder.geocode(request, (List<GeocoderResult> results, GeocoderStatus status) {
    if (status == GeocoderStatus.OK) {
      if (results[1] != null) {
        map.zoom = 11;
        final marker = new Marker(new MarkerOptions()
          ..position = latlng
          ..map = map
        );
        infowindow.content = results[1].formattedAddress;
        infowindow.open(map, marker);
      } else {
        window.alert('No results found');
      }
    } else {
      window.alert('Geocoder failed due to: ${status}');
    }
  });
}