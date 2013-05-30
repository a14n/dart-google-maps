import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/google_maps.dart';

void main() {
  final chicago = new LatLng(41.875696,-87.624207);
  final mapOptions = new MapOptions()
    ..zoom = 11
    ..center = chicago
    ..mapTypeId = MapTypeId.ROADMAP
    ;
  final map = new GMap(query("#map_canvas"), mapOptions);

  // TODO signature change 3.9 -> 3.10
  final ctaLayer = new KmlLayer()
    ..url = 'http://gmaps-samples.googlecode.com/svn/trunk/ggeoxml/cta.kml';
  ctaLayer.map = map;
}
