import 'dart:html' hide Events;
import 'package:js/js.dart' as js;
import 'package:google_maps/js_wrap.dart' as jsw;
import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_panoramio.dart';

void main() {
  js.scoped(() {
    final mapOptions = new MapOptions()
      ..zoom = 15
      ..center = new LatLng(40.693134, -74.031028)
      ..mapTypeId = MapTypeId.ROADMAP
      ;
    final map = new GMap(query("#map_canvas"), mapOptions);

    final panoramioLayer = new PanoramioLayer();
    panoramioLayer.map = map;

    final tag = query('#tag') as InputElement;
    final button = query('#filter-button');

    jsw.retain(panoramioLayer);
    event.addDomListener(button, 'click', (e) {
      panoramioLayer.tag = tag.value;
    });

    map.controls.getNodes(ControlPosition.TOP_CENTER).push(query('#filter'));
  });
}
