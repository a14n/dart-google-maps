import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/js_wrap.dart' as jsw;
import 'package:google_maps/google_maps.dart';

GMap map;
List<Marker> markers;

void main() {
  js.scoped(() {
    markers = new List<Marker>();

    final haightAshbury = new LatLng(37.7699298, -122.4469157);
    final mapOptions = new MapOptions()
      ..zoom = 12
      ..center = haightAshbury
      ..mapTypeId = MapTypeId.TERRAIN
      ;
    map = jsw.retain(new GMap(query("#map-canvas"), mapOptions));

    map.on.click.add((e) {
      addMarker(e.latLng);
    });

    query("#clearOverlays").on.click.add((e) => clearOverlays());
    query("#showOverlays").on.click.add((e) => showOverlays());
    query("#deleteOverlays").on.click.add((e) => deleteOverlays());
  });
}

// Add a marker to the map and push to the array.
void addMarker(LatLng location) {
  final marker = new Marker(new MarkerOptions()
    ..position = location
    ..map = map
  );
  jsw.retain(marker);
  markers.add(marker);
}

// Sets the map on all markers in the array.
void setAllMap(GMap map) {
  for (final marker in markers) {
    marker.map = map;
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
