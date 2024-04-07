import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'package:google_maps/google_maps.dart' hide Place;
import 'package:google_maps/google_maps.dart' as direction show Place;
import 'package:google_maps/google_maps_places.dart' hide Place;
import 'package:web/web.dart';

void main() {
  final origin = LatLng(-33.871, 151.197);
  final map = Map(
    document.getElementById('map') as HTMLElement,
    MapOptions()
      ..zoom = 18
      ..center = origin,
  );
  ClickEventHandler(map, origin);
}

bool isIconMouseEvent(MapMouseEventOrIconMouseEvent e) =>
    e.hasProperty('placeId'.toJS).toDart;

class ClickEventHandler {
  ClickEventHandler(this.map, this.origin) {
    directionsRenderer = DirectionsRenderer()..map = map;
    placesService = PlacesService(map);
    infowindowContent =
        document.getElementById('infowindow-content') as HTMLDivElement;
    infowindow.content = infowindowContent;
    // Listen for clicks on the map.
    map.onClick.listen(handleClick);
  }

  Map map;
  LatLng origin;
  DirectionsService directionsService = DirectionsService();
  late DirectionsRenderer directionsRenderer;
  late PlacesService placesService;
  late InfoWindow infowindow = InfoWindow();
  late HTMLDivElement infowindowContent;

  void handleClick(MapMouseEventOrIconMouseEvent event) {
    print('You clicked on: ${event.latLng}');

    // If the event has a placeId, use it.
    if (isIconMouseEvent(event)) {
      final placeId = (event as IconMouseEvent).placeId!;
      print('You clicked on place:$placeId');
      // Calling e.stop() on the event prevents the default info window from
      // showing.
      // If you call stop here when there is no placeId you will prevent some
      // other map click event handlers from receiving the event.
      event.stop();
      calculateAndDisplayRoute(placeId);
      getPlaceInformation(placeId);
    }
  }

  void calculateAndDisplayRoute(String placeId) async {
    try {
      final response = await directionsService
          .route(
            DirectionsRequest()
              ..origin = origin
              ..destination = (direction.Place()..placeId = placeId)
              ..travelMode = TravelMode.WALKING,
          )
          .toDart;
      directionsRenderer.directions = response;
    } catch (e) {
      window.alert('Directions request failed due to $e');
    }
  }

  void getPlaceInformation(String placeId) {
    placesService.getDetails(
      PlaceDetailsRequest()..placeId = placeId,
      (PlaceResult? place, PlacesServiceStatus status) {
        if (status == PlacesServiceStatus.OK && place != null) {
          infowindow
            ..close()
            ..position = place.geometry!.location;
          (infowindowContent.querySelector('#place-icon') as HTMLImageElement)
              .src = place.icon!;
          infowindowContent.querySelector('#place-name')!.textContent =
              place.name;
          infowindowContent.querySelector('#place-id')!.textContent =
              place.placeId;
          infowindowContent.querySelector('#place-address')!.textContent =
              place.formattedAddress;
          infowindow.open(map);
        }
      }.toJS,
    );
  }
}
