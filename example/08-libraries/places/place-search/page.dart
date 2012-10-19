import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart' as gmaps;
import 'package:google_maps/gmaps_places.dart' as gmaps_places;

gmaps.GMap map;
gmaps.InfoWindow infowindow;

void main() {
  js.scoped(() {
    final pyrmont = new gmaps.LatLng(-33.8665433, 151.1956316);

    map = jsw.retain(new gmaps.GMap(query("#map"), new gmaps.MapOptions()
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ..center = pyrmont
      ..zoom = 15
    ));


    final request = new gmaps_places.PlaceSearchRequest()
      ..location = pyrmont
      ..radius = 500
      ..types = ['store']
      ;

    infowindow = jsw.retain(new gmaps.InfoWindow());
    final service = new gmaps_places.PlacesService(map);
    // TODO search not documented
    service.nearbySearch(request, callback);
  });
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

  jsw.retainAll([marker, place]);
  marker.on.click.add((e) {
    infowindow.content = place.name;
    infowindow.open(map, marker);
  });
}