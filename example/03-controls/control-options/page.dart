import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart' as gmaps;

void main() {
  js.scoped(() {
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 4
      ..center = new gmaps.LatLng(-33, 151)
      ..mapTypeControl = true
      ..mapTypeControlOptions = (new gmaps.MapTypeControlOptions()
        ..style = gmaps.MapTypeControlStyle.DROPDOWN_MENU
      )
      ..zoomControl = true
      ..zoomControlOptions = (new gmaps.ZoomControlOptions()
        ..style = gmaps.ZoomControlStyle.SMALL
      )
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;

    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);
  });
}
