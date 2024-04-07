import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_geocoding.dart';
import 'package:web/web.dart';

late Geocoder geocoder;
late Map map;
const query = 'Toledo';

void main() {
  geocoder = Geocoder();
  final mapOptions = MapOptions()..zoom = 8;
  map = Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);
  codeAddress();
}

void codeAddress() {
  geocoder.geocode(
    GeocoderRequest()..address = query,
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
