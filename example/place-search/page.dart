import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_places.dart';
import 'package:web/web.dart';

late Map map;
late InfoWindow infowindow;

void main() {
  final sydney = LatLng(-33.867, 151.195);

  infowindow = InfoWindow();

  map = Map(
      document.getElementById('map-canvas') as HTMLElement,
      MapOptions()
        ..center = sydney
        ..zoom = 15);

  final request = FindPlaceFromQueryRequest()
    ..query = 'Museum of Contemporary Art Australia'
    ..fields = ['name', 'geometry'];

  PlacesService(map).findPlaceFromQuery(
    request,
    (JSArray<PlaceResult>? results, PlacesServiceStatus status) {
      if (status == PlacesServiceStatus.OK) {
        for (var i = 0; i < results!.toDart.length; i++) {
          createMarker(results.toDart[i]);
        }
      }
    }.toJS,
  );
}

void createMarker(PlaceResult place) {
  final marker = Marker(MarkerOptions()
    ..map = map
    ..position = place.geometry!.location);

  marker.onClick.listen((e) {
    infowindow.content = place.name?.toJS;
    infowindow.open(map, marker);
  });
}
