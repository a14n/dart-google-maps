import 'dart:html' hide MouseEvent;

import 'package:google_maps/google_maps.dart';

GMap map;
MaxZoomService maxZoomService;
InfoWindow infoWindow;

void main() {
  map = GMap(
    document.getElementById('map-canvas'),
    MapOptions()
      ..zoom = 11
      ..center = LatLng(35.6894875, 139.6917064)
      ..mapTypeId = MapTypeId.HYBRID,
  );

  infoWindow = InfoWindow();
  maxZoomService = MaxZoomService();
  map.onClick.listen(showMaxZoom);
}

void showMaxZoom(MouseEvent e) async {
  try {
    final response = await maxZoomService.getMaxZoomAtLatLng(e.latLng);
    infoWindow.content =
        'The maximum zoom at this location is: ${response.zoom}';
  } catch (e) {
    infoWindow.content = 'Error in MaxZoomService';
  }
  infoWindow.position = e.latLng;
  infoWindow.open(map);
}
