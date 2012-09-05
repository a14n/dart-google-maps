#import('dart:html');
#import('dart:math');
#import('../../../gmaps.dart', prefix:'gmaps');

var map;
var markers;

// Add a marker to the map and push to the array.
void addMarker(gmaps.LatLng location) {
  final markerOptions = new gmaps.MarkerOptions();
  markerOptions.position = location;
  markerOptions.map = map;
  final marker = new gmaps.Marker(markerOptions);
  markers.add(marker);
}

// Sets the map on all markers in the array.
void setAllMap(gmaps.GMap map) {
  for (var marker in markers) {
    marker.setMap(map);
  }
}

// Removes the overlays from the map, but keeps them in the array.
void clearOverlays() {
  setAllMap(null);
}

// Shows any overlays currently in the array.
void showOverlays() {
  setAllMap(map);
}

// Deletes all markers in the array by removing references to them.
void deleteOverlays() {
  clearOverlays();
  markers.clear();
}

void main() {
  markers = new List<gmaps.Marker>();

  final haightAshbury = new gmaps.LatLng(37.7699298, -122.4469157);
  final mapOptions = new gmaps.MapOptions();
  mapOptions.zoom = 12;
  mapOptions.center = haightAshbury;
  mapOptions.mapTypeId = gmaps.MapTypeId.TERRAIN;
  map = new gmaps.GMap(query("#map-canvas"), mapOptions);

  gmaps.Events.addListener(map, 'click', (e) {
    final me = new gmaps.MouseEvent.wrap(e);
    addMarker(me.latLng);
  });
  
  query("#clearOverlays").on.click.add((e) => clearOverlays());
  query("#showOverlays").on.click.add((e) => showOverlays());
  query("#deleteOverlays").on.click.add((e) => deleteOverlays());
}
