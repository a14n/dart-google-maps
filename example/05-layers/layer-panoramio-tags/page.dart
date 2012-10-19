import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart' as gmaps;
import 'package:google_maps/gmaps_panoramio.dart' as gmaps_panoramio;

void main() {
  js.scoped(() {
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 15
      ..center = new gmaps.LatLng(40.693134, -74.031028)
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

    final panoramioLayer = new gmaps_panoramio.PanoramioLayer();
    panoramioLayer.map = map;

    final tag = query('#tag') as InputElement;
    final button = query('#filter-button');

    jsw.retain(panoramioLayer);
    gmaps.Events.addDomListener(button, 'click', (e) {
      panoramioLayer.tag = tag.value;
    });

    map.controls.getNodes(gmaps.ControlPosition.TOP_CENTER).push(query('#filter'));
  });
}
