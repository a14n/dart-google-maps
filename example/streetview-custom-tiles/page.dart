import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_streetview.dart';
import 'package:web/web.dart' hide Event;

late StreetViewPanorama panorama;
// StreetViewPanoramaData of a panorama just outside the Google Sydney office.
late StreetViewPanoramaData outsideGoogle;

void main() {
  // Use the Street View service to find a pano ID on Pirrama Rd, outside the
  // Google office.
  StreetViewService().getPanorama(
    StreetViewLocationRequest()..location = LatLng(-33.867386, 151.195767),
    (StreetViewPanoramaData? result, StreetViewStatus status) {
      if (status == StreetViewStatus.OK) {
        outsideGoogle = result!;
        initPanorama();
      }
    }.toJS,
  );
}

void initPanorama() {
  panorama = StreetViewPanorama(
    document.getElementById('map-canvas') as HTMLElement,
    StreetViewPanoramaOptions()..pano = outsideGoogle.location!.pano,
  )
    // Register a provider for the custom panorama.
    ..registerPanoProvider((String pano) {
      if (pano == 'reception') {
        return getReceptionPanoramaData();
      }
      return null;
    }.toJS);

  // Add a link to our custom panorama from outside the Google Sydney office.
  event.addListener(
    panorama,
    'links_changed',
    () {
      if (panorama.pano == outsideGoogle.location!.pano) {
        panorama.links.toDart.add(StreetViewLink()
          ..description = 'Google Sydney'
          ..heading = 25
          ..pano = 'reception');
      }
    }.toJS,
  );
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
      ..pano = outsideGoogle.location!.pano
  ].toJS
  ..copyright = 'Imagery (c) 2010 Google'
  ..tiles = (StreetViewTileData()
    ..tileSize = Size(1024, 512)
    ..worldSize = Size(2048, 1024)
    ..centerHeading = 105
    ..getTileUrl = (pano, zoom, tileX, tileY) =>
        'https://developers.google.com/maps/documentation/javascript/examples/full/images/'
        'panoReception1024-$zoom-$tileX-$tileY.jpg');
