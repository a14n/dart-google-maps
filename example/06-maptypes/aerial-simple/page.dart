import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart' as gmaps;

void main() {
  js.scoped(() {
    final mapOptions = new gmaps.MapOptions()
      ..center = new gmaps.LatLng(36.964645, -122.01523)
      ..zoom = 18
      ..mapTypeId = gmaps.MapTypeId.SATELLITE
      ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);
    map.tilt = 45;
  });
}
