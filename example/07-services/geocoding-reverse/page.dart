import 'dart:html';

import 'package:google_maps/google_maps.dart';

final geocoder = new Geocoder();
GMap map;
final infowindow = new InfoWindow();
Marker marker;

void main() {
  final latlng = new LatLng(40.730885, -73.997383);
  final mapOptions = new MapOptions()
    ..zoom = 8
    ..center = latlng
    ..mapTypeId = MapTypeId.ROADMAP;
  map = new GMap(document.getElementById('map-canvas'), mapOptions);

  document.getElementById('codeLatLng').onClick.listen(codeLatLng);
}

void codeLatLng(_) {
  final input = (document.getElementById('latlng') as InputElement).value;
  final latlngStr = input.split(',');
  final lat = num.parse(latlngStr[0]);
  final lng = num.parse(latlngStr[1]);
  final latlng = new LatLng(lat, lng);
  geocoder.geocode(new GeocoderRequest()..location = latlng, (results, status) {
    if (status == GeocoderStatus.OK) {
      if (results[1] != null) {
        map.zoom = 11;
        final marker = new Marker(new MarkerOptions()
          ..position = latlng
          ..map = map);
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
