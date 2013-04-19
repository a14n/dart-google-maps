import 'dart:async';
import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/google_maps.dart';

void main() {
  js.scoped(() {
    final mapOptions = new MapOptions()
      ..zoom = 4
      ..center = new LatLng(-25.363882, 131.044922)
      ..mapTypeId = MapTypeId.ROADMAP
      ;

    final map = new GMap(query("#map_canvas"), mapOptions);

    final marker = new Marker(new MarkerOptions()
      ..position = map.center
      ..map = map
      ..title = "Click to zoom"
    );

    [map, marker].forEach(js.retain);
    map.onCenterChanged.listen((_) {
      // 3 seconds after the center of the map has changed, pan back to the marker.
      new Timer(const Duration(seconds: 3), () {
        js.scoped(() {
          map.panTo(marker.position);
        });
      });
    });

    [map, marker].forEach(js.retain);
    marker.onClick.listen((e) {
      map.zoom = 8;
      map.center = marker.position;
    });
  });
}