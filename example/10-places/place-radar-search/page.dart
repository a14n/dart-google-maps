import 'dart:html';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_places.dart';

GMap map;
InfoWindow infowindow;
PlacesService service;

void main() {
  map = GMap(
      document.getElementById('map-canvas'),
      MapOptions()
        ..center = LatLng(-33.8665433, 151.1956316)
        ..zoom = 15
        ..styles = <MapTypeStyle>[
          MapTypeStyle()
            ..stylers = [MapTypeStyler()..visibility = 'simplified'],
          MapTypeStyle()
            ..elementType = MapTypeStyleElementType.LABELS
            ..stylers = [MapTypeStyler()..visibility = 'off']
        ]);

  infowindow = InfoWindow();
  service = PlacesService(map);

  map.onBoundsChanged.listen(performSearch);
}

void performSearch(_) {
  final request = RadarSearchRequest()
    ..bounds = map.bounds
    ..keyword = 'best view';
  service.radarSearch(request, callback);
}

void callback(List<PlaceResult> results, PlacesServiceStatus status) {
  if (status != PlacesServiceStatus.OK) {
    window.alert('$status');
    return;
  }
  results.forEach(createMarker);
}

void createMarker(PlaceResult place) {
  final marker = Marker(MarkerOptions()
    ..map = map
    ..position = place.geometry.location
    ..icon = (GSymbol()
      ..path = 'M 0,-24 6,-7 24,-7 10,4 15,21 0,11 -15,21 -10,4 -24,-7 -6,-7 z'
      ..fillColor = '#ffff00'
      ..fillOpacity = 1
      ..scale = 1 / 4
      ..strokeColor = '#bd8d2c'
      ..strokeWeight = 1));

  marker.onClick.listen((_) {
    service.getDetails(PlaceDetailsRequest()..placeId = place.placeId,
        (result, status) {
      if (status != PlacesServiceStatus.OK) {
        window.alert('$status');
        return;
      }
      infowindow.content = result.name;
      infowindow.open(map, marker);
    });
  });
}
