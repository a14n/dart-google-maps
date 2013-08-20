import 'dart:html' hide Point;
import 'package:google_maps/google_maps.dart';

const IMAGE_URL = "https://google-developers.appspot.com/maps/documentation/javascript/examples/full";

/**
 * Data for the markers consisting of a name, a LatLng and a zIndex for
 * the order in which these markers should display on top of each
 * other.
 */
final beaches = [
  ['Bondi Beach', -33.890542, 151.274856, 4],
  ['Coogee Beach', -33.923036, 151.259052, 5],
  ['Cronulla Beach', -34.028249, 151.157507, 3],
  ['Manly Beach', -33.80010128657071, 151.28747820854187, 2],
  ['Maroubra Beach', -33.950198, 151.259302, 1]
];

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 10
    ..center = new LatLng(-33.9, 151.2)
    ..mapTypeId = MapTypeId.ROADMAP
    ;
  final map = new GMap(query("#map_canvas"), mapOptions);

  setMarkers(map, beaches);

  final image = 'https://google-developers.appspot.com/maps/documentation/javascript/examples/images/beachflag.png';
  final myLatLng = new LatLng(-33.890542, 151.274856);
  final beachMarker = new Marker(new MarkerOptions()
    ..position = myLatLng
    ..map = map
    ..icon = image
  );
}

void setMarkers(GMap map, List locations) {
  // Add markers to the map

  // Marker sizes are expressed as a Size of X,Y
  // where the origin of the image (0,0) is located
  // in the top left of the image.

  // Origins, anchor positions and coordinates of the marker
  // increase in the X direction to the right and in
  // the Y direction down.
  // TODO issue for MarkerImage deprecated
  final image = new Icon()
    ..url = '${IMAGE_URL}/images/beachflag.png'
    // This marker is 20 pixels wide by 32 pixels tall.
    ..size = new Size(20, 32)
    // The origin for this image is 0,0.
    ..origin = new Point(0,0)
    // The anchor for this image is the base of the flagpole at 0,32.
    ..anchor = new Point(0, 32);
  // TODO issue for MarkerImage deprecated
  final shadow = new Icon()
    ..url = '${IMAGE_URL}/images/beachflag_shadow.png'
    // The shadow image is larger in the horizontal dimension
    // while the position and offset are the same as for the main image.
    ..size = new Size(37, 32)
    ..origin = new Point(0, 0)
    ..anchor = new Point(0, 32);
  // Shapes define the clickable region of the icon.
  // The type defines an HTML &lt;area&gt; element 'poly' which
  // traces out a polygon as a series of X,Y points. The final
  // coordinate closes the poly by connecting to the first
  // coordinate.
  final shape = new MarkerShape()
    ..coords = [1, 1, 1, 20, 18, 20, 18 , 1]
    ..type = MarkerShapeType.POLY
    ;
  for (final beach in locations) {
    var myLatLng = new LatLng(beach[1], beach[2]);
    var marker = new Marker(new MarkerOptions()
      ..position = myLatLng
      ..map = map
      ..shadow = shadow
      ..icon = image
      ..shape = shape
      ..title = beach[0]
      ..zIndex = beach[3]
    );
  }
}