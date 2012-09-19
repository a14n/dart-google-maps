#import('dart:html');
#import('../../../lib/gmaps.dart', prefix:'gmaps');

void main() {
  final myLatlng = new gmaps.LatLng(-25.363882,131.044922);
  final mapOptions = new gmaps.MapOptions()
    ..zoom = 4
    ..center = myLatlng
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ;
  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  final marker = new gmaps.Marker(new gmaps.MarkerOptions()
    ..position = myLatlng
    ..map = map
    ..title = "Hello World!"
  );
}