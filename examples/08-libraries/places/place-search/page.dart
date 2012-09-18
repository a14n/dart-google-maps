#import('dart:html');
#import('../../../../gmaps.dart', prefix:'gmaps');
#import('../../../../gmaps-places.dart', prefix:'gmaps_places');

gmaps.GMap map;
gmaps.InfoWindow infowindow;

void main() {
  final pyrmont = new gmaps.LatLng(-33.8665433, 151.1956316);

  map = new gmaps.GMap(query("#map"), new gmaps.MapOptions()
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ..center = pyrmont
    ..zoom = 15
  );


  final request = new gmaps_places.PlaceSearchRequest()
    ..location = pyrmont
    ..radius = 500
    ..types = ['store']
    ;

  infowindow = new gmaps.InfoWindow();
  final service = new gmaps_places.PlacesService(map);
  // TODO search not documented
  service.nearbySearch(request, callback);
}

void callback(List<gmaps_places.PlaceResult> results, gmaps_places.PlacesServiceStatus status, gmaps_places.PlaceSearchPagination pagination) {
  if (status == gmaps_places.PlacesServiceStatus.OK) {
    for (var i = 0; i < results.length; i++) {
      createMarker(results[i]);
    }
  }
}

void createMarker(gmaps_places.PlaceResult place) {
  final placeLoc = place.geometry.location;
  final marker = new gmaps.Marker(new gmaps.MarkerOptions()
    ..map = map
    ..position = place.geometry.location
  );

  gmaps.Events.addListener(marker, 'click', (e) {
    infowindow.setContent(place.name);
    infowindow.open(map, marker);
  });
}