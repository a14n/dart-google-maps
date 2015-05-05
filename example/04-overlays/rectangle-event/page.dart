import 'dart:html' hide Rectangle;
import 'package:google_maps/google_maps.dart';

Rectangle rectangle;
GMap map;
InfoWindow infoWindow;

void main() {
  final mapOptions = new MapOptions()
    ..center = new LatLng(44.5452, -78.5389)
    ..zoom = 9;
  map = new GMap(document.getElementById('map-canvas'), mapOptions);

  final bounds = new LatLngBounds(
      new LatLng(44.490, -78.649), new LatLng(44.599, -78.443));

  // Define the rectangle and set its editable property to true.
  rectangle = new Rectangle(new RectangleOptions()
    ..bounds = bounds
    ..editable = true
    ..draggable = true);

  rectangle.map = map;

  // Add an event listener on the rectangle.
  rectangle.onBoundsChanged.listen(showNewRect);

  // Define an info window on the map.
  infoWindow = new InfoWindow();
}

void showNewRect(event) {
  final ne = rectangle.bounds.northEast;
  final sw = rectangle.bounds.southWest;

  final contentString = '<b>Rectangle moved.</b><br>'
      'New north-east corner: ${ne.lat}, ${ne.lng}<br>'
      'New south-west corner: ${sw.lat}, ${sw.lng}';

  // Set the info window's content and position.
  infoWindow.content = contentString;
  infoWindow.position = ne;

  infoWindow.open(map);
}
