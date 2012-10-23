import 'dart:html' hide MouseEvent;
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/google_maps.dart';

GMap map;
MaxZoomService maxZoomService;

void main() {
  js.scoped(() {
    final mapOptions = new MapOptions()
      ..zoom = 11
      ..center = new LatLng(35.6894875, 139.6917064)
      ..mapTypeId = MapTypeId.HYBRID
      ;
    map = jsw.retain(new GMap(query("#map_canvas"), mapOptions));

    maxZoomService = jsw.retain(new MaxZoomService());

    map.on.click.add(showMaxZoom);
  });
}

void showMaxZoom(MouseEvent e) {
  jsw.retain(e);
  maxZoomService.getMaxZoomAtLatLng(e.latLng, (response) {
    if (response.status != MaxZoomStatus.OK) {
      window.alert('Error in MaxZoomService');
      return;
    } else {
      window.alert('The maximum zoom at this location is: ${response.zoom}');
    }
    map.panTo(e.latLng);
    jsw.release(e);
  });
}