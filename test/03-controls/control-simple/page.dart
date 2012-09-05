#import('dart:html');
#import('dart:math');
#import('../../../gmaps.dart', prefix:'gmaps');

void main() {
  final mapOptions = new gmaps.MapOptions();
  mapOptions.zoom = 4;
  mapOptions.center = new gmaps.LatLng(-33, 151);
  mapOptions.panControl = false;
  mapOptions.zoomControl = false;
  mapOptions.scaleControl = true;
  mapOptions.mapTypeId = gmaps.MapTypeId.ROADMAP;
  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);
}
