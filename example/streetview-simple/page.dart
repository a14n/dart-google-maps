import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_streetview.dart';
import 'package:web/web.dart';

void main() {
  final fenway = LatLng(42.345573, -71.098326);
  final mapOptions = MapOptions()
    ..center = fenway
    ..zoom = 14;
  final map =
      Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);
  final panoramaOptions = StreetViewPanoramaOptions()
    ..position = fenway
    ..pov = (StreetViewPov()
      ..heading = 34
      ..pitch = 10);
  final panorama = StreetViewPanorama(
      document.getElementById('pano') as HTMLElement, panoramaOptions);
  map.streetView = panorama;
}
