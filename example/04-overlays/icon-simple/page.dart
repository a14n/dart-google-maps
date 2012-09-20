#import('dart:html');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

const IMAGE_URL = "https://google-developers.appspot.com/maps/documentation/javascript/examples";

void main() {
  final mapOptions = new gmaps.MapOptions()
    ..zoom = 4
    ..center = new gmaps.LatLng(-33, 151)
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ;
  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  final image = '${IMAGE_URL}/images/beachflag.png';
  final myLatLng = new gmaps.LatLng(-33.890542, 151.274856);
  final beachMarker = new gmaps.Marker(new gmaps.MarkerOptions()
    ..position = myLatLng
    ..map = map
    ..icon = image
  );
}