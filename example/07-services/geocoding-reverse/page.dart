import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/google_maps.dart';

Geocoder geocoder;
GMap map;
final InfoWindow infowindow = js.retain(new InfoWindow());
Marker marker;

void main() {
  geocoder = js.retain(new Geocoder());
  final latlng = new LatLng(40.730885,-73.997383);
  final mapOptions = new MapOptions()
    ..zoom = 8
    ..center = latlng
    ..mapTypeId = MapTypeId.ROADMAP
    ;
  map = js.retain(new GMap(query("#map_canvas"), mapOptions));

  query("#codeLatLng").onClick.listen((e) => codeLatLng());
}

void codeLatLng() {
  final input = (query('#latlng') as InputElement).value;
  final latlngStr = input.split(',');
  final lat = double.parse(latlngStr[0]);
  final lng = double.parse(latlngStr[1]);
  final LatLng latlng = js.retain(new LatLng(lat, lng));
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
        js.release(latlng);
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