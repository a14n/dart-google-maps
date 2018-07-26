import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final myLatlng = LatLng(37.06, -95.68);
  final mapOptions = MapOptions()
    ..zoom = 12
    ..center = myLatlng;
  final map = GMap(document.getElementById('map-canvas'), mapOptions);

  final kmlLayer = KmlLayer(KmlLayerOptions()
    ..url =
        'http://googlemaps.github.io/kml-samples/kml/Placemark/placemark.kml'
    ..suppressInfoWindows = true
    ..map = map);

  kmlLayer.onClick.listen((e) {
    final text = e.featureData.description;
    showInContentWindow(text);
  });
}

void showInContentWindow(String text) {
  final sidediv = document.getElementById('content-window');
  sidediv.innerHtml = text;
}
