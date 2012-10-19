import 'dart:html';
import 'dart:math';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart';

Geocoder geocoder;
GMap map;
final InfoWindow infowindow = jsw.retain(new InfoWindow());
Marker marker;

void main() {
  js.scoped(() {
    geocoder = jsw.retain(new Geocoder());
    final latlng = new LatLng(40.730885,-73.997383);
    final mapOptions = new MapOptions()
      ..zoom = 8
      ..center = latlng
      ..mapTypeId = MapTypeId.ROADMAP
      ;
    map = jsw.retain(new GMap(query("#map_canvas"), mapOptions));

    query("#codeLatLng").on.click.add((e) => codeLatLng());
  });
}

void codeLatLng() {
  js.scoped(() {
    final input = (query('#latlng') as InputElement).value;
    final latlngStr = input.split(',');
    final lat = parseDouble(latlngStr[0]);
    final lng = parseDouble(latlngStr[1]);
    final LatLng latlng = jsw.retain(new LatLng(lat, lng));
    final request = new GeocoderRequest()
      ..location = latlng  // TODO bad variable "latlng" in example code
      ;
    geocoder.geocode(request, (List<GeocoderResult> results, GeocoderStatus status) {
      if (status == GeocoderStatus.OK) {
        if (results[1] !== null) {
          map.zoom = 11;
          final marker = new Marker(new MarkerOptions()
            ..position = latlng
            ..map = map
          );
          jsw.release(latlng);
          infowindow.content = results[1].formatted_address;
          infowindow.open(map, marker);
        } else {
          window.alert('No results found');
        }
      } else {
        window.alert('Geocoder failed due to: ${status}');
      }
    });
  });
}