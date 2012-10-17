#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

gmaps.GMap map;
List<gmaps.Marker> markers;

void main() {
  js.scoped(() {
    markers = new List<gmaps.Marker>();

    final haightAshbury = new gmaps.LatLng(37.7699298, -122.4469157);
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 12
      ..center = haightAshbury
      ..mapTypeId = gmaps.MapTypeId.TERRAIN
      ;
    map = jsw.retain(new gmaps.GMap(query("#map-canvas"), mapOptions));

    map.on.click.add((e) {
      addMarker(e.latLng);
    });

    query("#clearOverlays").on.click.add((e) => clearOverlays());
    query("#showOverlays").on.click.add((e) => showOverlays());
    query("#deleteOverlays").on.click.add((e) => deleteOverlays());
  });
}

// Add a marker to the map and push to the array.
void addMarker(gmaps.LatLng location) {
  final marker = new gmaps.Marker(new gmaps.MarkerOptions()
    ..position = location
    ..map = map
  );
  jsw.retain(marker);
  markers.add(marker);
}

// Sets the map on all markers in the array.
void setAllMap(gmaps.GMap map) {
  for (final marker in markers) {
    marker.setMap(map);
  }
}

// Removes the overlays from the map, but keeps them in the array.
void clearOverlays() {
  js.scoped(() {
    setAllMap(null);
  });
}

// Shows any overlays currently in the array.
void showOverlays() {
  js.scoped(() {
    setAllMap(map);
  });
}

// Deletes all markers in the array by removing references to them.
void deleteOverlays() {
  js.scoped(() {
    clearOverlays();
    markers.forEach(jsw.release);
    markers.clear();
  });
}
