#import('dart:html');
#import('../../../gmaps.dart', prefix:'gmaps');

gmaps.GMap map;
gmaps.MaxZoomService maxZoomService;

void main() {
  final mapOptions = new gmaps.MapOptions()
    ..zoom = 11
    ..center = new gmaps.LatLng(35.6894875, 139.6917064)
    ..mapTypeId = gmaps.MapTypeId.HYBRID
    ;
  map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  maxZoomService = new gmaps.MaxZoomService();

  gmaps.Events.addListener(map, 'click', showMaxZoom);
}

void showMaxZoom(gmaps.NativeEvent e) {
  final me = new gmaps.MouseEvent.wrap(e);
  maxZoomService.getMaxZoomAtLatLng(me.latLng, (response) {
    if (response.status != gmaps.MaxZoomStatus.OK) {
      window.alert('Error in MaxZoomService');
      return;
    } else {
      window.alert('The maximum zoom at this location is: ${response.zoom}');
    }
    map.panTo(me.latLng);
  });
}