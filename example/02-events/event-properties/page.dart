import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/google_maps.dart';

void main() {
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

  [map, myLatLng, infowindow].forEach(js.retain);
  map.onZoomChanged.listen((_) {
    var zoomLevel = map.zoom;
    map.center = myLatLng;
    infowindow.content = "Zoom: $zoomLevel";
  });
}