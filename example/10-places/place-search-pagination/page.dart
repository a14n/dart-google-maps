import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_places.dart';
import 'package:web/web.dart';

late GMap map;

void main() {
  // Create the map.
  final pyrmont = LatLng(-33.866, 151.196);
  map = GMap(
      document.getElementById('map') as HTMLElement,
      MapOptions()
        ..center = pyrmont
        ..zoom = 17);

  // Create the places service.
  final service = PlacesService(map);
  void Function()? getNextPage;
  final moreButton = document.getElementById('more') as HTMLButtonElement;
  moreButton.onClick.listen((event) {
    moreButton.disabled = true;
    if (getNextPage != null) getNextPage!();
  });

  // Perform a nearby search.
  service.nearbySearch(
      PlaceSearchRequest()
        ..location = pyrmont
        ..radius = 500
        ..type = 'store', (results, status, pagination) {
    if (status != PlacesServiceStatus.OK) return;

    createMarkers(results!);
    moreButton.disabled = !pagination!.hasNextPage!;
    if (pagination.hasNextPage!) {
      getNextPage = () {
        pagination.nextPage();
      };
    }
  });
}

void createMarkers(List<PlaceResult?> places) {
  final bounds = LatLngBounds();
  final placesList = document.getElementById('places');

  for (final place in places) {
    final image = Icon()
      ..url = place!.icon
      ..size = Size(71, 71)
      ..origin = Point(0, 0)
      ..anchor = Point(17, 34)
      ..scaledSize = Size(25, 25);

    Marker(MarkerOptions()
      ..map = map
      ..icon = image
      ..title = place.name
      ..position = place.geometry!.location);

    final li = document.createElement('li')..textContent = place.name;
    placesList!.appendChild(li);

    bounds.extend(place.geometry!.location);
  }
  map.fitBounds(bounds);
}
