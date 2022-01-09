import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final chicago = LatLng(41.875696, -87.624207);
  final mapOptions = MapOptions()
    ..zoom = 11
    ..center = chicago;
  final map =
      GMap(document.getElementById('map-canvas') as HtmlElement, mapOptions);

  KmlLayer()
    ..url = 'http://googlearchive.github.io/js-v2-samples/ggeoxml/cta.kml'
    ..map = map;
}
