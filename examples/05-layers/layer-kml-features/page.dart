#import('dart:html');
#import('../../../gmaps.dart', prefix:'gmaps');

void main() {
  final myLatlng = new gmaps.LatLng(40.65, -73.95);
  final mapOptions = new gmaps.MapOptions()
    ..zoom = 12
    ..center = myLatlng
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ;
  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  final nyLayer = new gmaps.KmlLayer(
      'http://www.searcharoo.net/SearchKml/newyork.kml', 
      new gmaps.KmlLayerOptions()
        ..suppressInfoWindows = true
        ..map = map
      );

  gmaps.Events.addListener(nyLayer, 'click', (e) {
    final kmlEvent = new gmaps.KmlMouseEvent.wrap(e);
    final text = kmlEvent.featureData.description;
    showInContentWindow(text);
  });
}

void showInContentWindow(text) {
  final sidediv = document.query('#content_window');
  sidediv.innerHTML = text;
}
