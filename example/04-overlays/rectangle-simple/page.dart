#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:google_maps/jswrap.dart', prefix:'jsw');
#import('package:google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  js.scoped(() {
    final coachella = new gmaps.LatLng(33.6803003, -116.173894);

    final mapOptions = new gmaps.MapOptions()
      ..zoom = 11
      ..center = coachella
      ..mapTypeId = gmaps.MapTypeId.TERRAIN
      ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

    final rectangle = new gmaps.Rectangle();

    jsw.retainAll([map, rectangle]);
    map.on.zoomChanged.add(() {
      // Get the current bounds, which reflect the bounds before the zoom.
      final rectOptions = new gmaps.RectangleOptions()
        ..strokeColor = '#FF0000'
        ..strokeOpacity = 0.8
        ..strokeWeight = 2
        ..fillColor = '#FF0000'
        ..fillOpacity = 0.35
        ..map = map
        ..bounds = map.bounds
        ;
      rectangle.options = rectOptions;
    });
  });
}
