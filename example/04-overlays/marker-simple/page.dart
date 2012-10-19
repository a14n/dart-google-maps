import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart';

void main() {
  js.scoped(() {
    final myLatlng = new LatLng(-25.363882,131.044922);
    final mapOptions = new MapOptions()
      ..zoom = 4
      ..center = myLatlng
      ..mapTypeId = MapTypeId.ROADMAP
      ;
    final map = new GMap(query("#map_canvas"), mapOptions);

    final marker = new Marker(new MarkerOptions()
      ..position = myLatlng
      ..map = map
      ..title = "Hello World!"
    );
  });
}