import 'dart:html';

import 'package:google_maps/google_maps.dart';

void main() {
  // Set up Street View and initially set it visible. Register the
  // custom panorama provider function. Set the StreetView to display
  // the custom panorama 'reception' which we check for below.
  StreetViewPanorama(
    document.getElementById('map-canvas'),
    StreetViewPanoramaOptions()
      ..pano = 'reception'
      ..visible = true,
  ).registerPanoProvider((pano, [_]) => getCustomPanorama(pano));
}

// Return a pano image given the panoID.
String? getCustomPanoramaTileUrl(String? pano, num? zoom, num? tileX, num? tileY) =>
    'https://developers.google.com/maps/documentation/javascript/examples/full/images/'
    'panoReception1024-$zoom-$tileX-$tileY.jpg';

// Construct the appropriate StreetViewPanoramaData given
// the passed pano IDs.
StreetViewPanoramaData? getCustomPanorama(String? pano) {
  if (pano == 'reception') {
    return StreetViewPanoramaData()
      ..location = (StreetViewLocation()
        ..pano = 'reception'
        ..description = 'Google Sydney - Reception')
      ..links = []
      // The text for the copyright control.
      ..copyright = 'Imagery (c) 2010 Google'
      // The definition of the tiles for this panorama.
      ..tiles = (StreetViewTileData()
        ..tileSize = Size(1024, 512)
        ..worldSize = Size(1024, 512)
        // The heading in degrees at the origin of the panorama
        // tile set.
        ..centerHeading = 105
        ..getTileUrl = getCustomPanoramaTileUrl);
  }
  return null;
}
