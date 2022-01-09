import 'dart:html';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_places.dart';

late GMap map;
late InfoWindow infowindow;

void main() {
  final sydney = LatLng(-33.867, 151.195);

  infowindow = InfoWindow();

  map = GMap(
      document.getElementById('map-canvas') as HtmlElement,
      MapOptions()
        ..center = sydney
        ..zoom = 15);

  final request = FindPlaceFromQueryRequest()
    ..query = 'Museum of Contemporary Art Australia'
    ..fields = ['name', 'geometry'];

  PlacesService(map).findPlaceFromQuery(request, (results, status) {
    if (status == PlacesServiceStatus.OK) {
      for (var i = 0; i < results!.length; i++) {
        createMarker(results[i]!);
      }
    }
  });
}

void createMarker(PlaceResult place) {
  final marker = Marker(MarkerOptions()
    ..map = map
    ..position = place.geometry!.location);

  marker.onClick.listen((e) {
    infowindow.content = place.name;
    infowindow.open(map, marker);
  });
}
