import 'dart:html';

import 'package:google_maps/google_maps.dart';

const IMAGE_URL = "https://google-developers.appspot.com/maps/documentation/javascript/examples/full";

StreetViewPanorama panorama;

void main() {
  // The latlng of the entry point to the Google office on the road.
  final sydneyOffice = new LatLng(-33.867386, 151.195767);

  // Set up the map and enable the Street View control.
  final mapOptions = new MapOptions()
    ..center = sydneyOffice
    ..zoom = 16
    ..mapTypeId = MapTypeId.ROADMAP
    ;
  final map = new GMap(querySelector('#map_canvas'), mapOptions);

  panorama = map.streetView;
  // Set up Street View and initially set it visible. Register the
  // custom panorama provider function.
  final panoOptions = new StreetViewPanoramaOptions()
    ..position = sydneyOffice
    ..visible = true
    ..panoProvider =  getCustomPanorama
    ;
  panorama.$unsafe.callMethod('setOptions', [panoOptions.$unsafe]); //TODO undocumented method

  // Create a StreetViewService object.
  final streetviewService = new StreetViewService();

  // Compute the nearest panorama to the Google Sydney office
  // using the service and store that pano ID.
  final radius = 50;
  streetviewService.getPanoramaByLocation(sydneyOffice, radius, (StreetViewPanoramaData result, StreetViewStatus status) {
    if (status == StreetViewStatus.OK) {
      // We'll monitor the links_changed event to check if the current
      // pano is either a custom pano or our entry pano.
      panorama.onLinksChanged.listen((_) {
        return createCustomLinks(result.location.pano);
      });
    }
  });
}

String getCustomPanoramaTileUrl(String pano, num zoom, num tileX, num tileY) {
  // Return a pano image given the panoID.
  return '${IMAGE_URL}/images/panoReception1024-${zoom}-${tileX}-${tileY}.jpg';
}

StreetViewPanoramaData getCustomPanorama(String pano) {
  switch(pano) {
    case 'reception':
      return new StreetViewPanoramaData()
        ..location = (new StreetViewLocation()
          ..pano = 'reception'
          ..description = 'Google Sydney - Reception'
          ..latLng = new LatLng(-33.86684, 151.19583)
        )
        ..links = []
        // The text for the copyright control.
        ..copyright = 'Imagery (c) 2010 Google'
        // The definition of the tiles for this panorama.
        ..tiles = (new StreetViewTileData()
          ..tileSize = new Size(1024, 512)
          ..worldSize = new Size(2048, 1024)
          // The heading at the origin of the panorama tile set.
          ..centerHeading = 105
          ..set_getTileUrl(getCustomPanoramaTileUrl)
        );
    default:
      return null;
  }
}

void createCustomLinks(String entryPanoId) {
  final links = panorama.links;
  final panoId = panorama.pano;

  if (panoId == entryPanoId) {
    // Adding a link in the view from the entrance of the building to
    // reception.
    links.add(new StreetViewLink()
      ..heading = 25
      ..description = 'Google Sydney'
      ..pano = 'reception'
    );
  } else if (panoId == 'reception') {
    // Adding a link in the view from the entrance of the office
    // with an arrow pointing at 100 degrees, with a text of 'Exit'
    // and loading the street entrance of the building pano on click.
    links.add(new StreetViewLink()
      ..heading = 195
      ..description = 'Exit'
      ..pano = entryPanoId
    );
  }
}