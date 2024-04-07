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

void codeLatLng(_) {
  final input = (document.getElementById('latlng') as HTMLInputElement).value;
  final latlngStr = input.split(',');
  final lat = num.parse(latlngStr[0]);
  final lng = num.parse(latlngStr[1]);
  final latlng = LatLng(lat, lng);
  geocoder.geocode(
    GeocoderRequest()..location = latlng,
    (JSArray<GeocoderResult>? results, GeocoderStatus status) {
      if (status == GeocoderStatus.OK) {
        if (results!.toDart.isNotEmpty) {
          map.zoom = 11;
          final marker = Marker(MarkerOptions()
            ..position = latlng
            ..map = map);
          infowindow.content = results.toDart[0].formattedAddress.toJS;
          infowindow.open(map, marker);
        } else {
          window.alert('No results found');
        }
      } else {
        window.alert('Geocoder failed due to: $status');
      }
    }.toJS,
  );
}
