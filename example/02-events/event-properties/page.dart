import 'dart:html';
import 'dart:math';
import 'package:js/js.dart' as js;
import 'package:google_maps/js_wrap.dart' as jsw;
import 'package:google_maps/google_maps.dart';

void main() {
  js.scoped(() {
    var myLatLng = new LatLng(-25.363882, 131.044922);
    final mapOptions = new MapOptions()
      ..zoom = 4
      ..center = myLatLng
      ..mapTypeId = MapTypeId.ROADMAP
    ;

    final map = new GMap(query("#map_canvas"), mapOptions);

    final infowindow = new InfoWindow(new InfoWindowOptions()
      ..content = "Change the zoom level"
      ..position = myLatLng
    );
    infowindow.open(map);

    jsw.retainAll([map, myLatLng, infowindow]);
    map.on.zoomChanged.add(() {
      var zoomLevel = map.zoom;
      map.center = myLatLng;
      infowindow.content = "Zoom: $zoomLevel";
    });
  });
}