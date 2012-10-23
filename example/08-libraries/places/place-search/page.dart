import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/js_wrap.dart' as jsw;
import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_places.dart';

GMap map;
InfoWindow infowindow;

void main() {
  js.scoped(() {
    final pyrmont = new LatLng(-33.8665433, 151.1956316);

    map = jsw.retain(new GMap(query("#map"), new MapOptions()
      ..mapTypeId = MapTypeId.ROADMAP
      ..center = pyrmont
      ..zoom = 15
    ));


    final request = new PlaceSearchRequest()
      ..location = pyrmont
      ..radius = 500
      ..types = ['store']
      ;

    infowindow = jsw.retain(new InfoWindow());
    final service = new PlacesService(map);
    // TODO search not documented
    service.nearbySearch(request, callback);
  });
}

void callback(List<PlaceResult> results, PlacesServiceStatus status, PlaceSearchPagination pagination) {
  if (status == PlacesServiceStatus.OK) {
    for (var i = 0; i < results.length; i++) {
      createMarker(results[i]);
    }
  }
}

void createMarker(PlaceResult place) {
  final placeLoc = place.geometry.location;
  final marker = new Marker(new MarkerOptions()
    ..map = map
    ..position = place.geometry.location
  );

  jsw.retainAll([marker, place]);
  marker.on.click.add((e) {
    infowindow.content = place.name;
    infowindow.open(map, marker);
  });
}