import 'dart:html';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_places.dart';

GMap map;
InfoWindow infowindow;
PlacesService service;

void main() {
  map = new GMap(document.getElementById('map-canvas'), new MapOptions()
    ..center = new LatLng(-33.8665433, 151.1956316)
    ..zoom = 15
    ..styles = <MapTypeStyle>[
      new MapTypeStyle()
        ..stylers = [new MapTypeStyler()..visibility = 'simplified'],
      new MapTypeStyle()
        ..elementType = MapTypeStyleElementType.LABELS
        ..stylers = [new MapTypeStyler()..visibility = 'off']
    ]);

  infowindow = new InfoWindow();
  service = new PlacesService(map);

  map.onBoundsChanged.listen(performSearch);
}

void performSearch(_) {
  final request = new RadarSearchRequest()
    ..bounds = map.bounds
    ..keyword = 'best view';
  service.radarSearch(request, callback);
}

void callback(List<PlaceResult> results, PlacesServiceStatus status) {
  if (status != PlacesServiceStatus.OK) {
    window.alert('$status');
    return;
  }
  for (final result in results) {
    createMarker(result);
  }
}

void createMarker(PlaceResult place) {
  final marker = new Marker(new MarkerOptions()
    ..map = map
    ..position = place.geometry.location
    ..icon = (new GSymbol()
      ..path = 'M 0,-24 6,-7 24,-7 10,4 15,21 0,11 -15,21 -10,4 -24,-7 -6,-7 z'
      ..fillColor = '#ffff00'
      ..fillOpacity = 1
      ..scale = 1 / 4
      ..strokeColor = '#bd8d2c'
      ..strokeWeight = 1));

  marker.onClick.listen((_) {
    service.getDetails(new PlaceDetailsRequest()..placeId = place.placeId,
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
