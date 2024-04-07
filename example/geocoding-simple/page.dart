import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_geocoding.dart';
import 'package:web/web.dart';

final geocoder = Geocoder();
late Map map;

void main() {
  final latlng = LatLng(-34.397, 150.644);
  final mapOptions = MapOptions()
    ..zoom = 8
    ..center = latlng;
  map = Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  document.getElementById('codeAddress')!.onClick.listen(codeAddress);
}

void codeAddress(_) {
  final address =
      (document.getElementById('address') as HTMLInputElement).value;
  final request = GeocoderRequest()..address = address;
  geocoder.geocode(
    request,
    (JSArray<GeocoderResult>? results, GeocoderStatus status) {
      if (status == GeocoderStatus.OK) {
        map.center = results!.toDart[0].geometry.location;
        Marker(MarkerOptions()
          ..map = map
          ..position = results.toDart[0].geometry.location);
      } else {
        window.alert(
            'Geocode was not successful for the following reason: $status');
      }
    }.toJS,
  );
}
