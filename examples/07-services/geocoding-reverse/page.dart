#import('dart:html');
#import('dart:math');
#import('../../../gmaps.dart', prefix:'gmaps');

gmaps.Geocoder geocoder;
gmaps.GMap map;
gmaps.InfoWindow infowindow;
gmaps.Marker marker;

void main() {
  infowindow = new gmaps.InfoWindow();
  geocoder = new gmaps.Geocoder();
  final latlng = new gmaps.LatLng(40.730885,-73.997383);
  final mapOptions = new gmaps.MapOptions()
    ..zoom = 8
    ..center = latlng
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ;
  map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  query("#codeLatLng").on.click.add((e) => codeLatLng());
}

void codeLatLng() {
  final input = (query('#latlng') as InputElement).value;
  final latlngStr = input.split(',');
  final lat = parseDouble(latlngStr[0]);
  final lng = parseDouble(latlngStr[1]);
  final latlng = new gmaps.LatLng(lat, lng);
  final request = new gmaps.GeocoderRequest()
    ..location = latlng  // TODO bad variable "latlng" in example code
    ;
  geocoder.geocode(request, (List<gmaps.GeocoderResult> results, gmaps.GeocoderStatus status) {
    if (status == gmaps.GeocoderStatus.OK) {
      if (results[1] !== null) {
        map.setZoom(11);
        final marker = new gmaps.Marker(new gmaps.MarkerOptions()
          ..position = latlng
          ..map = map
        );
        infowindow.setContent(results[1].formatted_address);
        infowindow.open(map, marker);
      } else {
        window.alert('No results found');
      }
    } else {
      window.alert('Geocoder failed due to: ${status}');
    }
  });
}