#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  js.scoped(() {
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 4
      ..center = new gmaps.LatLng(-25.363882, 131.044922)
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;

    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

    final marker = new gmaps.Marker(new gmaps.MarkerOptions()
      ..position = map.getCenter()
      ..map = map
      ..title = "Click to zoom"
    );

    jsw.retainAll([map, marker]);
    gmaps.Events.addListener(map, 'center_changed', (e) {
      // 3 seconds after the center of the map has changed, pan back to the marker.
      window.setTimeout(() {
        js.scoped(() {
          map.panTo(marker.getPosition());
        });
      }, 3000);
    });

    jsw.retainAll([map, marker]);
    gmaps.Events.addListener(marker, 'click', (e) {
      map.setZoom(8);
      map.setCenter(marker.getPosition());
    });
  });
}