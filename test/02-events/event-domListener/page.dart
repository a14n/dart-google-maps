#import('dart:html');
#import('dart:math');
#import('../../../gmaps.dart', prefix:'gmaps');

void main() {
  final mapOptions = new gmaps.MapOptions();
  mapOptions.zoom = 8;
  mapOptions.center = new gmaps.LatLng(-34.397, 150.644);
  mapOptions.mapTypeId = gmaps.MapTypeId.ROADMAP;

  final mapDiv = query("#map_canvas");
  final map = new gmaps.GMap(mapDiv, mapOptions);

  // We add a DOM event here to show an alert if the DIV containing the
  // map is clicked. Note that we do this within the intialize function
  // since the document object isn't loaded until after the window.load
  // event.
  gmaps.Events.addDomListener(mapDiv, 'click', (e) { window.alert('DIV clicked'); });
}
