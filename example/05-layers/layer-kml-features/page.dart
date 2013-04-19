import 'dart:html';
import 'package:js/js.dart' as js;
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

    // TODO signature change 3.9 -> 3.10
    final nyLayer = new KmlLayer(
        new KmlLayerOptions()
          ..suppressInfoWindows = true
          ..map = map
        )
        ..url = 'http://www.searcharoo.net/SearchKml/newyork.kml';

    nyLayer.onClick.listen((e) {
      final text = e.featureData.description;
      showInContentWindow(text);
    });
  });
}

void showInContentWindow(text) {
  final sidediv = document.query('#content_window');
  sidediv.innerHtml = text;
}
