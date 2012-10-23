import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/js_wrap.dart' as jsw;
import 'package:google_maps/google_maps.dart';

Geocoder geocoder;
GMap map;
const address = 'Toledo';

void main() {
  js.scoped(() {
    geocoder = jsw.retain(new Geocoder());
    final mapOptions = new MapOptions()
      ..zoom = 8
      ..mapTypeId = MapTypeId.ROADMAP
      ;
    map = jsw.retain(new GMap(query("#map_canvas"), mapOptions));
    codeAddress();
  });
}

void codeAddress() {
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