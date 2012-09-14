#import('dart:html');
#import('../../../gmaps.dart', prefix:'gmaps');

gmaps.Geocoder geocoder;
gmaps.GMap map;
const address = 'Toledo';

void main() {
  geocoder = new gmaps.Geocoder();
  final mapOptions = new gmaps.MapOptions()
    ..zoom = 8
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ;
  map = new gmaps.GMap(query("#map_canvas"), mapOptions);
  codeAddress();
}

void codeAddress() {
  final request = new gmaps.GeocoderRequest()
    ..address = address
    ;
  geocoder.geocode(request, (List<gmaps.GeocoderResult> results, gmaps.GeocoderStatus status) {
    if (status == gmaps.GeocoderStatus.OK) {
      map.setCenter(results[0].geometry.location);
      final marker = new gmaps.Marker(new gmaps.MarkerOptions()
        ..map = map
        ..position = results[0].geometry.location
      );
    } else {
      window.alert('Geocode was not successful for the following reason: ${status}');
    }
  });
}