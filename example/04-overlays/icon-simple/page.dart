#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:google_maps/jswrap.dart', prefix:'jsw');
#import('package:google_maps/gmaps.dart', prefix:'gmaps');

const IMAGE_URL = "https://google-developers.appspot.com/maps/documentation/javascript/examples";

void main() {
  js.scoped(() {
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
  });
}