import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart' as gmaps;

void main() {
  js.scoped(() {
    final mapOptions = new gmaps.MapOptions()
      ..center = new gmaps.LatLng(44.5452, -78.5389)
      ..zoom = 9
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

    final bounds = new gmaps.LatLngBounds(
      new gmaps.LatLng(44.490, -78.649),
      new gmaps.LatLng(44.599, -78.443)
    );

    final rectangle = new gmaps.Rectangle(new gmaps.RectangleOptions()
      ..bounds = bounds
      ..editable = true
    );

    rectangle.map = map;
  });
}
