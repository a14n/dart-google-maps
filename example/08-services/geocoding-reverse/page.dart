import 'dart:html';

import 'package:google_maps/google_maps.dart';

final geocoder = Geocoder();
GMap map;
final infowindow = InfoWindow();
Marker marker;

void main() {
  final latlng = LatLng(40.730885, -73.997383);
  final mapOptions = MapOptions()
    ..zoom = 8
    ..center = latlng
    ..mapTypeId = MapTypeId.ROADMAP;
  map = GMap(document.getElementById('map-canvas'), mapOptions);

  document.getElementById('codeLatLng').onClick.listen(codeLatLng);
}

void codeLatLng(_) {
  final input = (document.getElementById('latlng') as InputElement).value;
  final latlngStr = input.split(',');
  final lat = num.parse(latlngStr[0]);
  final lng = num.parse(latlngStr[1]);
  final latlng = LatLng(lat, lng);
  geocoder.geocode(GeocoderRequest()..location = latlng, (results, status) {
    if (status == GeocoderStatus.OK) {
      if (results[1] != null) {
        map.zoom = 11;
        final marker = Marker(MarkerOptions()
          ..position = latlng
          ..map = map);
        infowindow.content = results[1].formattedAddress;
        infowindow.open(map, marker);
      } else {
        window.alert('No results found');
      }
    } else {
      window.alert('Geocoder failed due to: $status');
    }
  });
}
