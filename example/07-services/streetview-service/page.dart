#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

gmaps.GMap map;
final gmaps.LatLng berkeley = jsw.retain(new gmaps.LatLng(37.869085,-122.254775));
final gmaps.StreetViewService sv = jsw.retain(new gmaps.StreetViewService());

gmaps.StreetViewPanorama panorama;

void main() {
  js.scoped(() {
    panorama = jsw.retain(new gmaps.StreetViewPanorama(query('#pano')));

    // Set up the map
    final mapOptions = new gmaps.MapOptions()
      ..center = berkeley
      ..zoom = 16
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ..streetViewControl = false
      ;
    map = jsw.retain(new gmaps.GMap(query('#map_canvas'), mapOptions));

    // getPanoramaByLocation will return the nearest pano when the
    // given radius is 50 meters or less.
    map.on.click.add((e) {
      sv.getPanoramaByLocation(e.latLng, 50, processSVData);
    });
  });
}

void processSVData(gmaps.StreetViewPanoramaData data, gmaps.StreetViewStatus status) {
  if (status == gmaps.StreetViewStatus.OK) {
    final marker = new gmaps.Marker(new gmaps.MarkerOptions()
      ..position = data.location.latLng
      ..map = map
      ..title = data.location.description
    );

    panorama.setPano(data.location.pano);
    panorama.setPov(new gmaps.StreetViewPov()
      ..heading = 270
      ..pitch = 0
      ..zoom = 1
    );
    panorama.setVisible(true);

    jsw.retainAll([data]);
    marker.on.click.add((e) {
      final markerPanoID = data.location.pano;
      // Set the Pano to use the passed panoID
      panorama.setPano(markerPanoID);
      panorama.setPov(new gmaps.StreetViewPov()
        ..heading = 270
        ..pitch = 0
        ..zoom = 1
      );
      panorama.setVisible(true);
    });
  } else {
    window.alert('Street View data not found for this location.');
  }
}