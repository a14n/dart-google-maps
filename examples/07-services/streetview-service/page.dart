#import('dart:html');
#import('../../../gmaps.dart', prefix:'gmaps');

gmaps.GMap map;
gmaps.LatLng berkeley;
gmaps.StreetViewService sv;

gmaps.StreetViewPanorama panorama;

void main() {
  berkeley = new gmaps.LatLng(37.869085,-122.254775);
  sv = new gmaps.StreetViewService();

  panorama = new gmaps.StreetViewPanorama(query('#pano'));

  // Set up the map
  final mapOptions = new gmaps.MapOptions()
    ..center = berkeley
    ..zoom = 16
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ..streetViewControl = false
    ;
  map = new gmaps.GMap(query('#map_canvas'), mapOptions);

  // getPanoramaByLocation will return the nearest pano when the
  // given radius is 50 meters or less.
  gmaps.Events.addListener(map, 'click', (e) {
    final me = new gmaps.MouseEvent.wrap(e);
    sv.getPanoramaByLocation(me.latLng, 50, processSVData);
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

    gmaps.Events.addListener(marker, 'click', (e) {
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