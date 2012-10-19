import 'dart:html' hide Animation;
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart';

final LatLng stockholm = jsw.retain(new LatLng(59.32522, 18.07002));
final LatLng parliament = jsw.retain(new LatLng(59.327383, 18.06747));
Marker marker;
GMap map;

void main() {
  js.scoped(() {
    final mapOptions = new MapOptions()
      ..zoom = 13
      ..mapTypeId = MapTypeId.ROADMAP
      ..center = stockholm
      ;
    map = jsw.retain(new GMap(query("#map_canvas"), mapOptions));

    marker = jsw.retain(new Marker(new MarkerOptions()
      ..map = map
      ..draggable = true
      ..animation = Animation.DROP
      ..position = parliament
    ));
    marker.on.click.add((e) => toggleBounce());
  });
}

void toggleBounce() {
  if (marker.animation != null) {
    marker.animation = null;
  } else {
    marker.animation = Animation.BOUNCE;
  }
}