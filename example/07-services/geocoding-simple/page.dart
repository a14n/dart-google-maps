#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

gmaps.Geocoder geocoder;
gmaps.GMap map;

void main() {
  js.scoped(() {
    geocoder = jsw.retain(new gmaps.Geocoder());
    final latlng = new gmaps.LatLng(-34.397, 150.644);
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 8
      ..center = latlng
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;
    map = jsw.retain(new gmaps.GMap(query("#map_canvas"), mapOptions));

    query("#codeAddress").on.click.add((e) => codeAddress());
  });
}

void codeAddress() {
  js.scoped(() {
    final address = (query('#address') as InputElement).value;
    final request = new gmaps.GeocoderRequest()
      ..address = address
      ;
    geocoder.geocode(request, (List<gmaps.GeocoderResult> results, gmaps.GeocoderStatus status) {
      if (status == gmaps.GeocoderStatus.OK) {
        map.center = results[0].geometry.location;
        final marker = new gmaps.Marker(new gmaps.MarkerOptions()
          ..map = map
          ..position = results[0].geometry.location
        );
      } else {
        window.alert('Geocode was not successful for the following reason: ${status}');
      }
    });
  });
}