import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

late Map map;
late MaxZoomService maxZoomService;
late InfoWindow infoWindow;

void main() {
  map = Map(
    document.getElementById('map-canvas') as HTMLElement,
    MapOptions()
      ..zoom = 11
      ..center = LatLng(35.6894875, 139.6917064)
      ..mapTypeId = MapTypeId.HYBRID,
  );

  infoWindow = InfoWindow();
  maxZoomService = MaxZoomService();
  map.onClick.listen(showMaxZoom);
}

void showMaxZoom(MapMouseEventOrIconMouseEvent e) async {
  try {
    final response = await maxZoomService.getMaxZoomAtLatLng(e.latLng!);
    infoWindow.content =
        'The maximum zoom at this location is: ${response.zoom}'.toJS;
  } catch (e) {
    infoWindow.content = 'Error in MaxZoomService'.toJS;
  }
  infoWindow.position = e.latLng;
  infoWindow.open(map);
}
