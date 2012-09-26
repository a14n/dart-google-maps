#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

gmaps.GMap map;
gmaps.MaxZoomService maxZoomService;

void main() {
  js.scoped(() {
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 11
      ..center = new gmaps.LatLng(35.6894875, 139.6917064)
      ..mapTypeId = gmaps.MapTypeId.HYBRID
      ;
    map = jsw.retain(new gmaps.GMap(query("#map_canvas"), mapOptions));

    maxZoomService = jsw.retain(new gmaps.MaxZoomService());

    gmaps.Events.addListener(map, 'click', showMaxZoom);
  });
}

void showMaxZoom(gmaps.NativeEvent e) {
  final me = new gmaps.MouseEvent.wrap(e);
  jsw.retain(me);
  maxZoomService.getMaxZoomAtLatLng(me.latLng, (response) {
    if (response.status != gmaps.MaxZoomStatus.OK) {
      window.alert('Error in MaxZoomService');
      return;
    } else {
      window.alert('The maximum zoom at this location is: ${response.zoom}');
    }
    map.panTo(me.latLng);
    jsw.release(me);
  });
}