#import('dart:html');
#import('dart:math');
#import('../../../gmaps.dart', prefix:'gmaps');

void main() {
  final mapTypeControlOptions = new gmaps.MapTypeControlOptions();
  mapTypeControlOptions.style = gmaps.MapTypeControlStyle.DROPDOWN_MENU;
  final zoomControlOptions = new gmaps.ZoomControlOptions();
  zoomControlOptions.style = gmaps.ZoomControlStyle.SMALL;
  final mapOptions = new gmaps.MapOptions();
  mapOptions.zoom = 4;
  mapOptions.center = new gmaps.LatLng(-33, 151);
  mapOptions.mapTypeControl = true;
  mapOptions.mapTypeControlOptions = mapTypeControlOptions;
  mapOptions.zoomControl = true;
  mapOptions.zoomControlOptions = zoomControlOptions;
  mapOptions.mapTypeId = gmaps.MapTypeId.ROADMAP;

  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);
}
