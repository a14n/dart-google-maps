#import('dart:html');
#import('../../../gmaps.dart', prefix:'gmaps');

gmaps.Marker marker;
gmaps.GMap map;

void main() {
  final stockholm = new gmaps.LatLng(59.32522, 18.07002);
  final parliament = new gmaps.LatLng(59.327383, 18.06747);

  final mapOptions = new gmaps.MapOptions();
  mapOptions.zoom = 13;
  mapOptions.mapTypeId = gmaps.MapTypeId.ROADMAP;
  mapOptions.center = stockholm;
  map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  final markerOptions = new gmaps.MarkerOptions();
  markerOptions.map = map;
  markerOptions.draggable = true;
  markerOptions.animation = gmaps.Animation.DROP;
  markerOptions.position = parliament;
  marker = new gmaps.Marker(markerOptions);
  gmaps.Events.addListener(marker, 'click', (e) => toggleBounce());
}

void toggleBounce() {
  if (marker.getAnimation() != null) {
    marker.setAnimation(null);
  } else {
    marker.setAnimation(gmaps.Animation.BOUNCE);
  }
}