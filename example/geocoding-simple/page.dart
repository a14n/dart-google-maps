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

void codeAddress(_) async {
  final address =
      (document.getElementById('address') as HTMLInputElement).value;
  final request = GeocoderRequest()..address = address;
  final response = await geocoder.geocode(request);
  if (response.results.isNotEmpty) {
    final geometry = response.results.first.geometry;
    map.center = geometry.location;
    Marker(MarkerOptions()
      ..map = map
      ..position = geometry.location);
  }
}
