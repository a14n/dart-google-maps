import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final myLatlng = new LatLng(37.06, -95.68);
  final mapOptions = new MapOptions()
    ..zoom = 12
    ..center = myLatlng;
  final map = new GMap(document.getElementById('map-canvas'), mapOptions);

  final kmlLayer = new KmlLayer(new KmlLayerOptions()
    ..url =
    'http://kml-samples.googlecode.com/svn/trunk/kml/Placemark/placemark.kml'
    ..suppressInfoWindows = true
    ..map = map);

  kmlLayer.onClick.listen((e) {
    final text = e.featureData.description;
    showInContentWindow(text);
  });
}

void showInContentWindow(text) {
  final sidediv = document.getElementById('content-window');
  sidediv.innerHtml = text;
}
