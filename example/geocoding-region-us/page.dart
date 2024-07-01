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

void codeAddress() async {
  final response = await geocoder.geocode(GeocoderRequest()..address = query);
  if (response.results.isNotEmpty) {
    final geometry = response.results.first.geometry;
    map.center = geometry.location;
    Marker(MarkerOptions()
      ..map = map
      ..position = geometry.location);
  }
}
