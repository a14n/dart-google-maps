#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

gmaps.GMap map;
gmaps.StreetViewPanorama panorama;
final gmaps.LatLng astorPlace = jsw.retain(new gmaps.LatLng(40.729884, -73.990988));
final gmaps.LatLng busStop = jsw.retain(new gmaps.LatLng(40.729559678851025, -73.99074196815491));
final gmaps.LatLng cafe = jsw.retain(new gmaps.LatLng(40.730031233910694, -73.99142861366272));
final gmaps.LatLng bank = jsw.retain(new gmaps.LatLng(40.72968163306612, -73.9911389350891));

void main() {
  js.scoped(() {
    // Set up the map
    final mapOptions = new gmaps.MapOptions()
      ..center = astorPlace
      ..zoom = 18
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ..streetViewControl = false
      ;
    map = jsw.retain(new gmaps.GMap(query('#map_canvas'), mapOptions));

    // Setup the markers on the map
    final cafeMarkerImage = new gmaps.MarkerImage('http://chart.apis.google.com/chart?chst=d_map_pin_icon&chld=cafe|FFFF00');
    final cafeMarker = new gmaps.Marker(new gmaps.MarkerOptions()
      ..position = cafe
      ..map = map
      ..icon = cafeMarkerImage
      ..title = 'Cafe'
    );

    final bankMarkerImage = new gmaps.MarkerImage('http://chart.apis.google.com/chart?chst=d_map_pin_icon&chld=dollar|FFFF00');
    final bankMarker = new gmaps.Marker(new gmaps.MarkerOptions()
      ..position = bank
      ..map = map
      ..icon = bankMarkerImage
      ..title = 'Bank'
    );

    final busMarkerImage = new gmaps.MarkerImage('http://chart.apis.google.com/chart?chst=d_map_pin_icon&chld=bus|FFFF00');
    final busMarker = new gmaps.Marker(new gmaps.MarkerOptions()
      ..position = busStop
      ..map = map
      ..icon = busMarkerImage
      ..title = 'Bus Stop'
    );

    // We get the map's default panorama and set up some defaults.
    // Note that we don't yet set it visible.
    panorama = jsw.retain(map.getStreetView());
    panorama.setPosition(astorPlace);
    panorama.setPov(new gmaps.StreetViewPov()
      ..heading = 265
      ..zoom = 1
      ..pitch = 0
    );

    query("#toggleStreetView").on.click.add((e) => toggleStreetView());
  });
}

void toggleStreetView() {
  js.scoped(() {
    var toggle = panorama.getVisible();
    if (toggle == false) {
      panorama.setVisible(true);
    } else {
      panorama.setVisible(false);
    }
  });
}