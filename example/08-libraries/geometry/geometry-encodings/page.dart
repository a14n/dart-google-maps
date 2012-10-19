import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart' as gmaps;
import 'package:google_maps/gmaps_geometry.dart' as gmaps_geo;

gmaps.Polyline poly;

void main() {
  js.scoped(() {
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 14
      ..center = new gmaps.LatLng(34.3664951, -89.5192484)
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;

    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

    final polyOptions = new gmaps.PolylineOptions()
      ..strokeColor = '#000000'
      ..strokeOpacity = 1.0
      ..strokeWeight = 3
      ..map = map
      ;
    poly = jsw.retain(new gmaps.Polyline(polyOptions));

    // Add a listener for the click event
    map.on.click.add(addLatLng);
  });
}

/**
 * Handles click events on a map, and adds a new point to the Polyline.
 * Updates the encoding text area with the path's encoded values.
 */
void addLatLng(gmaps.MouseEvent e) {
  final path = poly.path;
  // Because path is an MVCArray, we can simply append a new coordinate
  // and it will automatically appear
  path.push(e.latLng);

  // Update the text field to display the polyline encodings
  final encodeString = gmaps_geo.Encoding.encodePath(path);
  if (encodeString !== null) {
    (query('#encoded-polyline') as TextAreaElement).value = encodeString;
  }
}