import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_geocoding.dart';
import 'package:web/web.dart';

final geocoder = Geocoder();
late Map map;
final infowindow = InfoWindow();
late Marker marker;

void main() {
  final latlng = LatLng(40.730885, -73.997383);
  final mapOptions = MapOptions()
    ..zoom = 8
    ..center = latlng
    ..mapTypeId = MapTypeId.ROADMAP;
  map = Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  document.getElementById('codeLatLng')!.onClick.listen(codeLatLng);
}

void codeLatLng(_) async {
  final input = (document.getElementById('latlng') as HTMLInputElement).value;
  final latlngStr = input.split(',');
  final lat = num.parse(latlngStr[0]);
  final lng = num.parse(latlngStr[1]);
  final latlng = LatLng(lat, lng);
  final response = await geocoder.geocode(GeocoderRequest()..location = latlng);
  if (response.results.isNotEmpty) {
    map.zoom = 11;
    final marker = Marker(MarkerOptions()
      ..position = latlng
      ..map = map);
    infowindow.content = response.results.first.formattedAddress.toJS;
    infowindow.open(map, marker);
  } else {
    window.alert('No results found');
  }
}
