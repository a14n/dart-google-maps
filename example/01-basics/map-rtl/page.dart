import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart' as gmaps;

void main() {
  js.scoped(() {
    final mapOptions = new gmaps.MapOptions()
      ..scaleControl = true
      ..center = new gmaps.LatLng(30.064742, 31.249509)
      ..zoom = 10
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

    final marker = new gmaps.Marker(new gmaps.MarkerOptions()
      ..map = map
      ..position = map.center
    );
    final gmaps.InfoWindow infowindow = new gmaps.InfoWindow();
    infowindow.content = '<b>القاهرة</b>';

    jsw.retainAll([infowindow, map, marker]);
    marker.on.click.add((e) {
      infowindow.open(map, marker);
    });
  });
}