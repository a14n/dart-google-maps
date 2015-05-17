import 'dart:html' hide MouseEvent;

import 'package:google_maps/google_maps.dart';

GMap map;
MaxZoomService maxZoomService;

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 11
    ..center = new LatLng(35.6894875, 139.6917064)
    ..mapTypeId = MapTypeId.HYBRID;
  map = new GMap(document.getElementById('map-canvas'), mapOptions);

  maxZoomService = new MaxZoomService();

  map.onClick.listen(showMaxZoom);
}

void showMaxZoom(MouseEvent e) {
  maxZoomService.getMaxZoomAtLatLng(e.latLng, (response) {
    if (response.status != MaxZoomStatus.OK) {
      window.alert('Error in MaxZoomService');
      return;
    } else {
      window.alert('The maximum zoom at this location is: ${response.zoom}');
    }
    map.panTo(e.latLng);
  });
}
