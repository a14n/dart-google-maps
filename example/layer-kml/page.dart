import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

void main() {
  final chicago = LatLng(41.875696, -87.624207);
  final mapOptions = MapOptions()
    ..zoom = 11
    ..center = chicago;
  final map =
      Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  KmlLayer()
    ..url = 'http://googlearchive.github.io/js-v2-samples/ggeoxml/cta.kml'
    ..map = map;
}
