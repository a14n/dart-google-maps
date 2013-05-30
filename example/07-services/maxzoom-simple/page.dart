import 'dart:html' hide MouseEvent;
import 'package:js/js.dart' as js;
import 'package:google_maps/google_maps.dart';

GMap map;
MaxZoomService maxZoomService;

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 11
    ..center = new LatLng(35.6894875, 139.6917064)
    ..mapTypeId = MapTypeId.HYBRID
    ;
  map = js.retain(new GMap(query("#map_canvas"), mapOptions));

  maxZoomService = js.retain(new MaxZoomService());

  map.onClick.listen(showMaxZoom);
}

void showMaxZoom(MouseEvent e) {
  js.retain(e);
  maxZoomService.getMaxZoomAtLatLng(e.latLng, (response) {
    if (response.status != MaxZoomStatus.OK) {
      window.alert('Error in MaxZoomService');
      return;
    } else {
      window.alert('The maximum zoom at this location is: ${response.zoom}');
    }
    map.panTo(e.latLng);
    js.release(e);
  });
}