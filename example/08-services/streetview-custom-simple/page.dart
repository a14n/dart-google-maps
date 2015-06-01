import 'dart:html';

import 'package:google_maps/google_maps.dart';
import 'package:js_wrapping/js_wrapping.dart';

const IMAGE_URL =
    "https://google-developers.appspot.com/maps/documentation/javascript/examples/full";

void main() {
  // Set up Street View and initially set it visible. Register the
  // custom panorama provider function. Set the StreetView to display
  // the custom panorama 'reception' which we check for below.
  final panoOptions = new StreetViewPanoramaOptions()
    ..pano = 'reception'
    ..visible = true;
  asJsObject(panoOptions)['panoProvider'] = (String pano) {
    return asJs(getCustomPanorama(pano));
  };

  new StreetViewPanorama(document.getElementById('map-canvas'), panoOptions);
}

// Return a pano image given the panoID.
String getCustomPanoramaTileUrl(
    String pano, num tileZoom, num tileX, num tileY) {
  // Note: robust custom panorama methods would require tiled pano data.
  // Here we're just using a single tile, set to the tile size and equal
  // to the pano "world" size.
  return '${IMAGE_URL}/images/panoReception1024-0.jpg';
}

// Construct the appropriate StreetViewPanoramaData given
// the passed pano IDs.
StreetViewPanoramaData getCustomPanorama(String pano) {
  if (pano == 'reception') {
    final tiles = new StreetViewTileData()
      ..tileSize = new Size(1024, 512)
      ..worldSize = new Size(1024, 512)
      // The heading in degrees at the origin of the panorama
      // tile set.
      ..centerHeading = 105;
    asJsObject(tiles)['getTileUrl'] = getCustomPanoramaTileUrl;

    return new StreetViewPanoramaData()
      ..location = (new StreetViewLocation()
        ..pano = 'reception'
        ..description = 'Google Sydney - Reception')
      ..links = []
      // The text for the copyright control.
      ..copyright = 'Imagery (c) 2010 Google'
      // The definition of the tiles for this panorama.
      ..tiles = tiles;
  }
  return null;
}
