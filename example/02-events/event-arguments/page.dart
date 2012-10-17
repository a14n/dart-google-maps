#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  js.scoped(() {
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 4
      ..center = new gmaps.LatLng(-25.363882,131.044922)
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

    jsw.retain(map);
    map.on.click.add((e) {
      placeMarker(e.latLng, map);
    });
  });
}

void placeMarker(gmaps.LatLng position, gmaps.GMap map) {
  var marker = new gmaps.Marker(new gmaps.MarkerOptions()
    ..position = position
    ..map = map
  );

  map.panTo(position);
}