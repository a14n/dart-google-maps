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

    map.on.click.add(showMaxZoom);
  });
}

void showMaxZoom(gmaps.MouseEvent e) {
  jsw.retain(e);
  maxZoomService.getMaxZoomAtLatLng(e.latLng, (response) {
    if (response.status != gmaps.MaxZoomStatus.OK) {
      window.alert('Error in MaxZoomService');
      return;
    } else {
      window.alert('The maximum zoom at this location is: ${response.zoom}');
    }
    map.panTo(e.latLng);
    jsw.release(e);
  });
}