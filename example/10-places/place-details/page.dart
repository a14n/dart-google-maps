import 'dart:html';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_places.dart';

void main() {
  final map = new GMap(document.getElementById('map-canvas'), new MapOptions()
    ..center = new LatLng(-33.8665433, 151.1956316)
    ..zoom = 15);

  final request = new PlaceDetailsRequest()
    ..placeId = 'ChIJN1t_tDeuEmsRUsoyG83frY4';

  final infowindow = new InfoWindow();
  final service = new PlacesService(map);

  service.getDetails(request, (place, status) {
    if (status == PlacesServiceStatus.OK) {
      final marker = new Marker(new MarkerOptions()
        ..map = map
        ..position = place.geometry.location);
      marker.onClick.listen((e) {
        infowindow.content = place.name;
        infowindow.open(map, marker);
      });
    }
  });
}
