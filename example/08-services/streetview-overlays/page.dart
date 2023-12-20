import 'package:google_maps/google_maps.dart';
import 'package:web/helpers.dart';

late GMap map;
late StreetViewPanorama panorama;
final astorPlace = LatLng(40.729884, -73.990988);
final busStop = LatLng(40.729559678851025, -73.99074196815491);
final cafe = LatLng(40.730031233910694, -73.99142861366272);
final bank = LatLng(40.72968163306612, -73.9911389350891);

void main() {
  // Set up the map
  final mapOptions = MapOptions()
    ..center = astorPlace
    ..zoom = 18
    ..streetViewControl = false;
  map = GMap(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  // Setup the markers on the map
  Marker(MarkerOptions()
    ..position = cafe
    ..map = map
    ..icon =
        'http://chart.apis.google.com/chart?chst=d_map_pin_icon&chld=cafe|FFFF00'
    ..title = 'Cafe');

  Marker(MarkerOptions()
    ..position = bank
    ..map = map
    ..icon =
        'http://chart.apis.google.com/chart?chst=d_map_pin_icon&chld=dollar|FFFF00'
    ..title = 'Bank');

  Marker(MarkerOptions()
    ..position = busStop
    ..map = map
    ..icon =
        'http://chart.apis.google.com/chart?chst=d_map_pin_icon&chld=bus|FFFF00'
    ..title = 'Bus Stop');

  // We get the map's default panorama and set up some defaults.
  // Note that we don't yet set it visible.
  panorama = map.streetView!
    ..position = astorPlace
    ..pov = (StreetViewPov()
      ..heading = 265
      ..pitch = 0);

  querySelector('#toggleStreetView')!.onClick.listen((e) => toggleStreetView());
}

void toggleStreetView() {
  final toggle = panorama.visible;
  if (toggle == false) {
    panorama.visible = true;
  } else {
    panorama.visible = false;
  }
}
