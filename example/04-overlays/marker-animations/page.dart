#import('dart:html');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

gmaps.Marker marker;
gmaps.GMap map;

void main() {
  final stockholm = new gmaps.LatLng(59.32522, 18.07002);
  final parliament = new gmaps.LatLng(59.327383, 18.06747);

  final mapOptions = new gmaps.MapOptions()
    ..zoom = 13
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ..center = stockholm
    ;
  map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  marker = new gmaps.Marker(new gmaps.MarkerOptions()
    ..map = map
    ..draggable = true
    ..animation = gmaps.Animation.DROP
    ..position = parliament
  );
  gmaps.Events.addListener(marker, 'click', (e) => toggleBounce());
}

void toggleBounce() {
  if (marker.getAnimation() != null) {
    marker.setAnimation(null);
  } else {
    marker.setAnimation(gmaps.Animation.BOUNCE);
  }
}