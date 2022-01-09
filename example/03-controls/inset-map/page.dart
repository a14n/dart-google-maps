import 'dart:html';

import 'package:google_maps/google_maps.dart';

const overviewDifference = 5;
const overviewMinZoom = 3;
const overviewMaxZoom = 10;

void main() {
  final mapOptions = MapOptions()
    ..center = LatLng(50, 8)
    ..zoom = 7;
  GMap(
    document.getElementById('map') as HtmlElement,
    MapOptions()
      ..zoom = 4
      ..center = LatLng(-33, 151)
      ..zoomControl = false
      ..scaleControl = true,
  );
  // instantiate the primary map
  final map = GMap(document.getElementById('map') as HtmlElement, mapOptions);
  // instantiate the overview map without controls
  final overview = GMap(
    document.getElementById('overview') as HtmlElement,
    MapOptions()
      ..center = mapOptions.center
      ..zoom = mapOptions.zoom
      ..disableDefaultUI = true
      ..gestureHandling = 'none'
      ..zoomControl = false,
  );

  map.onBoundsChanged.listen((event) {
    overview
      ..center = map.center
      ..zoom = (map.zoom! - overviewDifference)
          .clamp(overviewMinZoom, overviewMaxZoom);
  });
}
