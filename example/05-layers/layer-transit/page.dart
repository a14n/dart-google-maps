import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart' as gmaps;

void main() {
  js.scoped(() {
    final myLatlng = new gmaps.LatLng(51.501904,-0.115871);
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 13
      ..center = myLatlng
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

    final transitLayer = new gmaps.TransitLayer();
    transitLayer.map = map;
  });
}
