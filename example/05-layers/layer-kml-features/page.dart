import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final myLatlng = new LatLng(37.06, -95.68);
  final mapOptions = new MapOptions()
    ..zoom = 12
    ..center = myLatlng
    ..mapTypeId = MapTypeId.ROADMAP
    ;
  final map = new GMap(querySelector("#map_canvas"), mapOptions);

  // TODO signature change 3.9 -> 3.10
  final kmlLayer = new KmlLayer(
      new KmlLayerOptions()
        ..suppressInfoWindows = true
        ..map = map
      )
      ..url = 'http://kml-samples.googlecode.com/svn/trunk/kml/Placemark/placemark.kml';

  kmlLayer.onClick.listen((e) {
    final text = e.featureData.description;
    showInContentWindow(text);
  });
}

void showInContentWindow(text) {
  final sidediv = document.querySelector('#content_window');
  sidediv.innerHtml = text;
}
