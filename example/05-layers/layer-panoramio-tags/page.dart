#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');
#import('package:dart_google_maps/gmaps-panoramio.dart', prefix:'gmaps_panoramio');

void main() {
  js.scoped(() {
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 15
      ..center = new gmaps.LatLng(40.693134, -74.031028)
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

    final panoramioLayer = new gmaps_panoramio.PanoramioLayer();
    panoramioLayer.setMap(map);

    final tag = query('#tag') as InputElement;
    final button = query('#filter-button');

    jsw.retain(panoramioLayer);
    gmaps.Events.addDomListener(button, 'click', (e) {
      panoramioLayer.setTag(tag.value);
    });

    map.controls.getNodes(gmaps.ControlPosition.TOP_CENTER).push(query('#filter'));
  });
}
