import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart';

void main() {
  js.scoped(() {
    final chicago = new LatLng(41.875696,-87.624207);
    final mapOptions = new MapOptions()
      ..zoom = 11
      ..center = chicago
      ..mapTypeId = MapTypeId.ROADMAP
      ;
    final map = new GMap(query("#map_canvas"), mapOptions);

    final ctaLayer = new KmlLayer('http://gmaps-samples.googlecode.com/svn/trunk/ggeoxml/cta.kml');
    ctaLayer.map = map;
  });
}
