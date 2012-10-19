import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart' as gmaps;

void main() {
  js.scoped(() {
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 4
      ..center = new gmaps.LatLng(-25.363882,131.044922)
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

    jsw.retain(map);
    map.on.click.add((e) {
      placeMarker(e.latLng, map);
    });
  });
}

void placeMarker(gmaps.LatLng position, gmaps.GMap map) {
  var marker = new gmaps.Marker(new gmaps.MarkerOptions()
    ..position = position
    ..map = map
  );

  map.panTo(position);
}