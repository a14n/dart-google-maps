import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_places.dart';
import 'package:web/web.dart';

void main() {
  final map = Map(
      document.getElementById('map-canvas') as HTMLElement,
      MapOptions()
        ..center = LatLng(-33.8665433, 151.1956316)
        ..zoom = 15);

  final request = PlaceDetailsRequest()
    ..placeId = 'ChIJN1t_tDeuEmsRUsoyG83frY4';

  final infowindow = InfoWindow();
  PlacesService(map).getDetails(
    request,
    (PlaceResult? place, PlacesServiceStatus status) {
      if (status == PlacesServiceStatus.OK) {
        final marker = Marker(MarkerOptions()
          ..map = map
          ..position = place!.geometry!.location);
        marker.onClick.listen((e) {
          infowindow
            ..content = place.name?.toJS
            ..open(map, marker);
        });
      }
    }.toJS,
  );
}
