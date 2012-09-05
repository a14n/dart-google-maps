#import('dart:html');
#import('dart:math');
#import('../../../gmaps.dart', prefix:'gmaps');

void main() {
  final mapTypeControlOptions = new gmaps.MapTypeControlOptions();
  mapTypeControlOptions.style = gmaps.MapTypeControlStyle.HORIZONTAL_BAR;
  mapTypeControlOptions.position = gmaps.ControlPosition.BOTTOM_CENTER;
  final panControlOptions = new gmaps.PanControlOptions();
  panControlOptions.position = gmaps.ControlPosition.TOP_RIGHT;
  final zoomControlOptions = new gmaps.ZoomControlOptions();
  zoomControlOptions.style = gmaps.ZoomControlStyle.LARGE;
  zoomControlOptions.position = gmaps.ControlPosition.LEFT_CENTER;
  final scaleControlOptions = new gmaps.ScaleControlOptions();
  scaleControlOptions.position = gmaps.ControlPosition.TOP_LEFT;
  final streetViewControlOptions = new gmaps.StreetViewControlOptions();
  streetViewControlOptions.position = gmaps.ControlPosition.LEFT_TOP;
  final mapOptions = new gmaps.MapOptions();
  mapOptions.zoom = 12;
  mapOptions.center = new gmaps.LatLng(-28.643387, 153.612224);
  mapOptions.mapTypeId = gmaps.MapTypeId.ROADMAP;
  mapOptions.mapTypeControl = true;
  mapOptions.mapTypeControlOptions = mapTypeControlOptions;
  mapOptions.panControl = true;
  mapOptions.panControlOptions = panControlOptions;
  mapOptions.zoomControl = true;
  mapOptions.zoomControlOptions = zoomControlOptions;
  mapOptions.scaleControl = true;
  mapOptions.scaleControlOptions = scaleControlOptions;
  mapOptions.streetViewControl = true;
  mapOptions.streetViewControlOptions = streetViewControlOptions;

  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);
}
