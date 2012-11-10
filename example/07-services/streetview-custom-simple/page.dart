import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/optional.dart';
import 'package:google_maps/js_wrap.dart' as jsw;
import 'package:google_maps/google_maps.dart';

const IMAGE_URL = "https://google-developers.appspot.com/maps/documentation/javascript/examples";

void main() {
  js.scoped(() {
    // Set up Street View and initially set it visible. Register the
    // custom panorama provider function. Set the StreetView to display
    // the custom panorama 'reception' which we check for below.
    final panoOptions = new StreetViewPanoramaOptions()
      ..pano = 'reception'
      ..visible = true
      ..panoProvider = getCustomPanorama
      ;

    final panorama = new StreetViewPanorama(query('#pano_canvas'), panoOptions);
  });
}

// Return a pano image given the panoID.
String getCustomPanoramaTileUrl(String pano, num tileZoom, num tileX, num tileY) {
  // Note: robust custom panorama methods would require tiled pano data.
  // Here we're just using a single tile, set to the tile size and equal
  // to the pano "world" size.
  return '${IMAGE_URL}/images/panoReception1024-0.jpg';
}

// Construct the appropriate StreetViewPanoramaData given
// the passed pano IDs.
StreetViewPanoramaData getCustomPanorama(String pano) { // TODO bad parameters
  if (pano == 'reception') {
    return jsw.retain(new StreetViewPanoramaData()
      ..location = (new StreetViewLocation()
        ..pano = 'reception'
        ..description = 'Google Sydney - Reception'
      )
      ..links = []
      // The text for the copyright control.
      ..copyright = 'Imagery (c) 2010 Google'
      // The definition of the tiles for this panorama.
      ..tiles = (new StreetViewTileData()
        ..tileSize = new Size(1024, 512)
        ..worldSize = new Size(1024, 512)
        // The heading in degrees at the origin of the panorama
        // tile set.
        ..centerHeading = 105
        ..set_getTileUrl(getCustomPanoramaTileUrl)
      )
    );
  }
}
