import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart' as gmaps;

void main() {
  js.scoped(() {
    final myLatlng = new gmaps.LatLng(42.3726399, -71.1096528);
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 14
      ..center = myLatlng
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

    final bikeLayer = new gmaps.BicyclingLayer();
    bikeLayer.map = map;
  });
}
