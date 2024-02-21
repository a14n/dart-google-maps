import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

final geocoder = Geocoder();
late GMap map;

void main() {
  final latlng = LatLng(-34.397, 150.644);
  final mapOptions = MapOptions()
    ..zoom = 8
    ..center = latlng;
  map = GMap(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  document.getElementById('codeAddress')!.onClick.listen(codeAddress);
}

void codeAddress(_) {
  final address =
      (document.getElementById('address') as HTMLInputElement).value;
  final request = GeocoderRequest()..address = address;
  geocoder.geocode(request, (results, status) {
    if (status == GeocoderStatus.OK) {
      map.center = results![0]!.geometry!.location;
      Marker(MarkerOptions()
        ..map = map
        ..position = results[0]!.geometry!.location);
    } else {
      window.alert(
          'Geocode was not successful for the following reason: $status');
    }
  });
}
