#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

const IMAGE_URL = "https://google-developers.appspot.com/maps/documentation/javascript/examples";

gmaps.StreetViewPanorama panorama;

void main() {
  js.scoped(() {
    // The latlng of the entry point to the Google office on the road.
    final sydneyOffice = new gmaps.LatLng(-33.867386, 151.195767);

    // Set up the map and enable the Street View control.
    final mapOptions = new gmaps.MapOptions()
      ..center = sydneyOffice
      ..zoom = 16
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;
    final map = new gmaps.GMap(query('#map_canvas'), mapOptions);

    panorama = jsw.retain(map.getStreetView());
    // Set up Street View and initially set it visible. Register the
    // custom panorama provider function.
    final panoOptions = new gmaps.StreetViewPanoramaOptions()
      ..position = sydneyOffice
      ..visible = true
      ..panoProvider =  getCustomPanorama
      ;
    panorama.$.setOptions(panoOptions); //TODO undocumented method

    // Create a StreetViewService object.
    final streetviewService = new gmaps.StreetViewService();

    // Compute the nearest panorama to the Google Sydney office
    // using the service and store that pano ID.
    final radius = 50;
    jsw.retain(sydneyOffice);
    streetviewService.getPanoramaByLocation(sydneyOffice, radius, (gmaps.StreetViewPanoramaData result, gmaps.StreetViewStatus status) {
      if (status == gmaps.StreetViewStatus.OK) {
        // We'll monitor the links_changed event to check if the current
        // pano is either a custom pano or our entry pano.
        jsw.retain(result);
        gmaps.Events.addListener(panorama, 'links_changed', (e) {
          return createCustomLinks(result.location.pano);
        });
      }
    });
  });
}

String getCustomPanoramaTileUrl(pano, zoom, tileX, tileY) {
  // Return a pano image given the panoID.
  return '${IMAGE_URL}/images/panoReception1024-${zoom}-${tileX}-${tileY}.jpg';
}

gmaps.StreetViewPanoramaData getCustomPanorama(String pano) {
  switch(pano) {
    case 'reception':
      return jsw.retain(new gmaps.StreetViewPanoramaData()
        ..location = (new gmaps.StreetViewLocation()
          ..pano = 'reception'
          ..description = 'Google Sydney - Reception'
          ..latLng = new gmaps.LatLng(-33.86684, 151.19583)
        )
        ..links = []
        // The text for the copyright control.
        ..copyright = 'Imagery (c) 2010 Google'
        // The definition of the tiles for this panorama.
        ..tiles = (new gmaps.StreetViewTileData()
          ..tileSize = new gmaps.Size(1024, 512)
          ..worldSize = new gmaps.Size(2048, 1024)
          // The heading at the origin of the panorama tile set.
          ..centerHeading = 105
          ..$.getTileUrl = new jsw.Callback.many(getCustomPanoramaTileUrl)
        )
      );
    default:
      return null;
  }
}

void createCustomLinks(String entryPanoId) {
  final links = panorama.getLinks();
  final panoId = panorama.getPano();

  switch(panoId) {
    case entryPanoId:
      // Adding a link in the view from the entrance of the building to
      // reception.
      links.add(new gmaps.StreetViewLink()
        ..heading = 25
        ..description = 'Google Sydney'
        ..pano = 'reception'
      );
      break;
    case 'reception':
      // Adding a link in the view from the entrance of the office
      // with an arrow pointing at 100 degrees, with a text of 'Exit'
      // and loading the street entrance of the building pano on click.
      links.add(new gmaps.StreetViewLink()
        ..heading = 195
        ..description = 'Exit'
        ..pano = entryPanoId
      );
      break;
    default:
      return;
  }
}