#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

gmaps.Polyline poly;
gmaps.GMap map;

void main() {
  js.scoped(() {
    final chicago = new gmaps.LatLng(41.879535, -87.624333);
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 7
      ..center = chicago
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;
    map = jsw.retain(new gmaps.GMap(query("#map_canvas"), mapOptions));

    final polyOptions = new gmaps.PolylineOptions()
      ..strokeColor = '#000000'
      ..strokeOpacity = 1.0
      ..strokeWeight = 3
      ;
    poly = jsw.retain(new gmaps.Polyline(polyOptions));
    poly.setMap(map);

    // Add a listener for the click event
    gmaps.Events.addListener(map, 'click', addLatLng);
  });
}

/**
 * Handles click events on a map, and adds a new point to the Polyline.
 * @param {MouseEvent} mouseEvent
 */
void addLatLng(gmaps.NativeEvent event) {
  final me = new gmaps.MouseEvent.wrap(event);

  final path = poly.getPath();

  // Because path is an MVCArray, we can simply append a new coordinate
  // and it will automatically appear
  path.push(me.latLng);

  // Add a new marker at the new plotted point on the polyline.
  var marker = new gmaps.Marker(new gmaps.MarkerOptions()
    ..position = me.latLng
    ..title = '#${path.getLength()}'
    ..map = map
  );
}