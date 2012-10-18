#import('dart:html');
#import('dart:math');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

gmaps.Geocoder geocoder;
gmaps.GMap map;
final gmaps.InfoWindow infowindow = jsw.retain(new gmaps.InfoWindow());
gmaps.Marker marker;

void main() {
  js.scoped(() {
    geocoder = jsw.retain(new gmaps.Geocoder());
    final latlng = new gmaps.LatLng(40.730885,-73.997383);
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 8
      ..center = latlng
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;
    map = jsw.retain(new gmaps.GMap(query("#map_canvas"), mapOptions));

    query("#codeLatLng").on.click.add((e) => codeLatLng());
  });
}

void codeLatLng() {
  js.scoped(() {
    final input = (query('#latlng') as InputElement).value;
    final latlngStr = input.split(',');
    final lat = parseDouble(latlngStr[0]);
    final lng = parseDouble(latlngStr[1]);
    final gmaps.LatLng latlng = jsw.retain(new gmaps.LatLng(lat, lng));
    final request = new gmaps.GeocoderRequest()
      ..location = latlng  // TODO bad variable "latlng" in example code
      ;
    geocoder.geocode(request, (List<gmaps.GeocoderResult> results, gmaps.GeocoderStatus status) {
      if (status == gmaps.GeocoderStatus.OK) {
        if (results[1] !== null) {
          map.zoom = 11;
          final marker = new gmaps.Marker(new gmaps.MarkerOptions()
            ..position = latlng
            ..map = map
          );
          jsw.release(latlng);
          infowindow.content = results[1].formatted_address;
          infowindow.open(map, marker);
        } else {
          window.alert('No results found');
        }
      } else {
        window.alert('Geocoder failed due to: ${status}');
      }
    });
  });
}