import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final chicago = new LatLng(41.875696, -87.624207);
  final mapOptions = new MapOptions()
    ..zoom = 11
    ..center = chicago;
  final map = new GMap(document.getElementById('map-canvas'), mapOptions);

  final ctaLayer = new KmlLayer()
    ..url = 'http://gmaps-samples.googlecode.com/svn/trunk/ggeoxml/cta.kml';
  ctaLayer.map = map;
}
