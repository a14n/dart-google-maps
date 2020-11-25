import 'dart:html';

import 'package:google_maps/google_maps.dart';

StreetViewPanorama panorama;
// StreetViewPanoramaData of a panorama just outside the Google Sydney office.
StreetViewPanoramaData outsideGoogle;

void main() {
  // Use the Street View service to find a pano ID on Pirrama Rd, outside the
  // Google office.
  StreetViewService().getPanorama(
    StreetViewLocationRequest()..location = LatLng(-33.867386, 151.195767),
    (result, status) {
      if (status == StreetViewStatus.OK) {
        outsideGoogle = result;
        initPanorama();
      }
    },
  );
}

void initPanorama() {
  panorama = StreetViewPanorama(
    document.getElementById('street-view'),
    StreetViewPanoramaOptions()..pano = outsideGoogle.location.pano,
  )
    // Register a provider for the custom panorama.
    ..registerPanoProvider((pano, [_]) {
      if (pano == 'reception') {
        return getReceptionPanoramaData();
      }
      return null;
    });

  // Add a link to our custom panorama from outside the Google Sydney office.
  Event.addListener(panorama, 'links_changed', (_) {
    if (panorama.pano == outsideGoogle.location.pano) {
      panorama.links.add(StreetViewLink()
        ..description = 'Google Sydney'
        ..heading = 25
        ..pano = 'reception');
    }
  });
}

// StreetViewPanoramaData for a custom panorama: the Google Sydney reception.
StreetViewPanoramaData getReceptionPanoramaData() => StreetViewPanoramaData()
  ..location = (StreetViewLocation()
    ..pano = 'reception' // The ID for this custom panorama.
    ..description = 'Google Sydney - Reception'
    ..latLng = LatLng(-33.86684, 151.19583))
  ..links = [
    StreetViewLink()
      ..heading = 195
      ..description = 'Exit'
      ..pano = outsideGoogle.location.pano
  ]
  ..copyright = 'Imagery (c) 2010 Google'
  ..tiles = (StreetViewTileData()
    ..tileSize = Size(1024, 512)
    ..worldSize = Size(2048, 1024)
    ..centerHeading = 105
    ..getTileUrl = (pano, zoom, tileX, tileY) =>
        'https://developers.google.com/maps/documentation/javascript/examples/full/images/'
        'panoReception1024-$zoom-$tileX-$tileY.jpg');
