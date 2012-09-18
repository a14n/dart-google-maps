#import('dart:html');
#import('../../../../gmaps.dart', prefix:'gmaps');
#import('../../../../gmaps-places.dart', prefix:'gmaps_places');

void main() {
  final mapOptions = new gmaps.MapOptions()
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ..center = new gmaps.LatLng(-33.8665433, 151.1956316)
    ..zoom = 15
    ;
  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);


  final request = new gmaps_places.PlaceDetailsRequest()
    ..reference = 'CnRkAAAAGnBVNFDeQoOQHzgdOpOqJNV7K9-c5IQrWFUYD9TNhUmz5-aHhfqyKH0zmAcUlkqVCrpaKcV8ZjGQKzB6GXxtzUYcP-muHafGsmW-1CwjTPBCmK43AZpAwW0FRtQDQADj3H2bzwwHVIXlQAiccm7r4xIQmjt_Oqm2FejWpBxLWs3L_RoUbharABi5FMnKnzmRL2TGju6UA4k'
    ;

  final infowindow = new gmaps.InfoWindow();
  final service = new gmaps_places.PlacesService(map);

  service.getDetails(request, function(place, status) {
    if (status == gmaps_places.PlacesServiceStatus.OK) {
      final marker = new gmaps.Marker(new gmaps.MarkerOptions()
        ..map = map
        ..position = place.geometry.location
      );
      gmaps.Events.addListener(marker, 'click', (e) {
        infowindow.setContent(place.name);
        infowindow.open(map, marker);
      });
    }
  });
}