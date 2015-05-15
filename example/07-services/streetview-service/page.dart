import 'dart:html';

import 'package:google_maps/google_maps.dart';

GMap map;
final berkeley = new LatLng(37.869085, -122.254775);
// TODO(aa) https://code.google.com/p/gmaps-api-issues/issues/detail?id=8048
final sv = new StreetViewService();

StreetViewPanorama panorama;

void main() {
  panorama = new StreetViewPanorama(document.getElementById('pano'));

  // Set up the map
  final mapOptions = new MapOptions()
    ..center = berkeley
    ..zoom = 16
    ..streetViewControl = false;
  map = new GMap(document.getElementById('map-canvas'), mapOptions);

  // Set the initial Street View camera to the center of the map
  sv.getPanoramaByLocation(berkeley, 50, processSVData);

  // Look for a nearby Street View panorama when the map is clicked.
  // getPanoramaByLocation will return the nearest pano when the
  // given radius is 50 meters or less.
  map.onClick.listen((e) {
    sv.getPanoramaByLocation(e.latLng, 50, processSVData);
  });
}

void processSVData(StreetViewPanoramaData data, StreetViewStatus status) {
  if (status == StreetViewStatus.OK) {
    final marker = new Marker(new MarkerOptions()
      ..position = data.location.latLng
      ..map = map
      ..title = data.location.description);

    panorama.pano = data.location.pano;
    panorama.pov = new StreetViewPov()
      ..heading = 270
      ..pitch = 0;
    panorama.visible = true;

    marker.onClick.listen((e) {
      final markerPanoID = data.location.pano;
      // Set the Pano to use the passed panoID
      panorama.pano = markerPanoID;
      panorama.pov = new StreetViewPov()
        ..heading = 270
        ..pitch = 0;
      panorama.visible = true;
    });
  } else {
    window.alert('Street View data not found for this location.');
  }
}
