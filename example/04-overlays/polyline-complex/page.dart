import 'dart:html' hide MouseEvent;
import 'package:js/js.dart' as js;
import 'package:google_maps/google_maps.dart';

Polyline poly;
GMap map;

void main() {
  js.scoped(() {
    final chicago = new LatLng(41.879535, -87.624333);
    final mapOptions = new MapOptions()
      ..zoom = 7
      ..center = chicago
      ..mapTypeId = MapTypeId.ROADMAP
      ;
    map = js.retain(new GMap(query("#map_canvas"), mapOptions));

    final polyOptions = new PolylineOptions()
      ..strokeColor = '#000000'
      ..strokeOpacity = 1.0
      ..strokeWeight = 3
      ;
    poly = js.retain(new Polyline(polyOptions));
    poly.map = map;

    // Add a listener for the click event
    map.on.click.add(addLatLng);
  });
}

/**
 * Handles click events on a map, and adds a new point to the Polyline.
 * @param {MouseEvent} mouseEvent
 */
void addLatLng(MouseEvent e) {
  final path = poly.path;

  // Because path is an MVCArray, we can simply append a new coordinate
  // and it will automatically appear
  path.push(e.latLng);

  // Add a new marker at the new plotted point on the polyline.
  var marker = new Marker(new MarkerOptions()
    ..position = e.latLng
    ..title = '#${path.length}'
    ..map = map
  );
}