#import('dart:html');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

const IMAGE_URL = "https://google-developers.appspot.com/maps/documentation/javascript/examples";

/**
 * Data for the markers consisting of a name, a LatLng and a zIndex for
 * the order in which these markers should display on top of each
 * other.
 */
var beaches;

void main() {
  beaches = [
             ['Bondi Beach', -33.890542, 151.274856, 4],
             ['Coogee Beach', -33.923036, 151.259052, 5],
             ['Cronulla Beach', -34.028249, 151.157507, 3],
             ['Manly Beach', -33.80010128657071, 151.28747820854187, 2],
             ['Maroubra Beach', -33.950198, 151.259302, 1]
             ];

  final mapOptions = new gmaps.MapOptions()
    ..zoom = 10
    ..center = new gmaps.LatLng(-33.9, 151.2)
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ;
  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  setMarkers(map, beaches);

  final image = 'https://google-developers.appspot.com/maps/documentation/javascript/examples/images/beachflag.png';
  final myLatLng = new gmaps.LatLng(-33.890542, 151.274856);
  final beachMarker = new gmaps.Marker(new gmaps.MarkerOptions()
    ..position = myLatLng
    ..map = map
    ..icon = image
  );
}

void setMarkers(gmaps.GMap map, List locations) {
  // Add markers to the map

  // Marker sizes are expressed as a Size of X,Y
  // where the origin of the image (0,0) is located
  // in the top left of the image.

  // Origins, anchor positions and coordinates of the marker
  // increase in the X direction to the right and in
  // the Y direction down.
  final image = new gmaps.MarkerImage('${IMAGE_URL}/images/beachflag.png',
      // This marker is 20 pixels wide by 32 pixels tall.
      new gmaps.Size(20, 32),
      // The origin for this image is 0,0.
      new gmaps.Point(0,0),
      // The anchor for this image is the base of the flagpole at 0,32.
      new gmaps.Point(0, 32));
  final shadow = new gmaps.MarkerImage('${IMAGE_URL}/images/beachflag_shadow.png',
      // The shadow image is larger in the horizontal dimension
      // while the position and offset are the same as for the main image.
      new gmaps.Size(37, 32),
      new gmaps.Point(0,0),
      new gmaps.Point(0, 32));
  // Shapes define the clickable region of the icon.
  // The type defines an HTML &lt;area&gt; element 'poly' which
  // traces out a polygon as a series of X,Y points. The final
  // coordinate closes the poly by connecting to the first
  // coordinate.
  final shape = new gmaps.MarkerShape()
    ..coords = [1, 1, 1, 20, 18, 20, 18 , 1]
    ..type = gmaps.MarkerShapeType.POLY
    ;
  for (final beach in locations) {
    var myLatLng = new gmaps.LatLng(beach[1], beach[2]);
    var marker = new gmaps.Marker(new gmaps.MarkerOptions()
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