import 'dart:html';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_places.dart';
import 'package:js/js_util.dart';

void main() {
  final origin = LatLng(-33.871, 151.197);
  final map = GMap(
    document.getElementById('map'),
    MapOptions()
      ..zoom = 18
      ..center = origin,
  );
  ClickEventHandler(map, origin);
}

bool isIconMouseEvent(MapMouseEvent e) => hasProperty(e, 'placeId');

class ClickEventHandler {
  ClickEventHandler(this.map, this.origin) {
    directionsRenderer = DirectionsRenderer()..map = map;
    placesService = PlacesService(map);
    infowindowContent =
        document.getElementById('infowindow-content') as DivElement;
    infowindow.content = infowindowContent;
    // Listen for clicks on the map.
    map.onClick.listen(handleClick);
  }

  GMap map;
  LatLng origin;
  DirectionsService directionsService = DirectionsService();
  late DirectionsRenderer directionsRenderer;
  late PlacesService placesService;
  late InfoWindow infowindow = InfoWindow();
  late DivElement infowindowContent;

  void handleClick(MapMouseEvent event) {
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
      final response = await directionsService.route(
        DirectionsRequest()
          ..origin = origin
          ..destination = (Place()..placeId = placeId)
          ..travelMode = TravelMode.WALKING,
      );
      directionsRenderer.directions = response;
    } catch (e) {
      window.alert('Directions request failed due to $e');
    }
  }

  void getPlaceInformation(String placeId) {
    placesService.getDetails(PlaceDetailsRequest()..placeId = placeId,
        (place, status) {
      if (status == PlacesServiceStatus.OK) {
        infowindow
          ..close()
          ..position = place!.geometry!.location;
        (infowindowContent.querySelector('#place-icon') as ImageElement).src =
            place.icon;
        infowindowContent.querySelector('#place-name')!.text = place.name;
        infowindowContent.querySelector('#place-id')!.text = place.placeId;
        infowindowContent.querySelector('#place-address')!.text =
            place.formattedAddress;
        infowindow.open(map);
      }
    });
  }
}
