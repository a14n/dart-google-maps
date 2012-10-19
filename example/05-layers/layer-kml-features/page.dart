import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart' as gmaps;

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
