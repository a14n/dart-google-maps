import 'dart:async';
import 'dart:html' hide Animation;
import 'package:js/js.dart' as js;
import 'package:google_maps/js_wrap.dart' as jsw;
import 'package:google_maps/google_maps.dart';

final berlin = jsw.retain(new LatLng(52.520816, 13.410186));
final List<LatLng> neighborhoods = [
  jsw.retain(new LatLng(52.511467, 13.447179)),
  jsw.retain(new LatLng(52.549061, 13.422975)),
  jsw.retain(new LatLng(52.497622, 13.396110)),
  jsw.retain(new LatLng(52.517683, 13.394393))
];

final markers = new List<Marker>();
int iterator = 0;

GMap map;

void main() {
  js.scoped(() {
    final mapOptions = new MapOptions()
      ..zoom = 12
      ..mapTypeId = MapTypeId.ROADMAP
      ..center = berlin;
    map = jsw.retain(new GMap(query("#map_canvas"), mapOptions));

    query("#drop").onClick.listen(drop);
  });
}

void drop(e) {
  js.scoped(() {
    for (var i = 0; i < neighborhoods.length; i++) {
      new Timer(new Duration(milliseconds: i * 200), addMarker);
    }
  });
}

void addMarker() {
  js.scoped(() {
    markers.add(new Marker(new MarkerOptions()
      ..position = neighborhoods[iterator % neighborhoods.length]
      ..map = map
      ..draggable = false
      ..animation = Animation.DROP
    ));
    iterator++;
  });
}