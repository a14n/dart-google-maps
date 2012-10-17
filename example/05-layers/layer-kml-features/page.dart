#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  js.scoped(() {
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

    nyLayer.on.click.add((e) {
      final text = e.featureData.description;
      showInContentWindow(text);
    });
  });
}

void showInContentWindow(text) {
  final sidediv = document.query('#content_window');
  sidediv.innerHTML = text;
}
