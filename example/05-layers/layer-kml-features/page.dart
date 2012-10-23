import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/google_maps.dart';

void main() {
  js.scoped(() {
    final myLatlng = new LatLng(40.65, -73.95);
    final mapOptions = new MapOptions()
      ..zoom = 12
      ..center = myLatlng
      ..mapTypeId = MapTypeId.ROADMAP
      ;
    final map = new GMap(query("#map_canvas"), mapOptions);

    final nyLayer = new KmlLayer(
        'http://www.searcharoo.net/SearchKml/newyork.kml',
        new KmlLayerOptions()
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
