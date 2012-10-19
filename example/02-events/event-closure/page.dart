import 'dart:html';
import 'dart:math' as Math;
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart' as gmaps;

void main() {
  js.scoped(() {
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 4
      ..center = new gmaps.LatLng(-25.363882,131.044922)
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ;

    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

    // Add 5 markers to the map at random locations.
    final southWest = new gmaps.LatLng(-31.203405,125.244141);
    final northEast = new gmaps.LatLng(-25.363882,131.044922);

    final bounds = new gmaps.LatLngBounds(southWest,northEast);
    map.fitBounds(bounds);

    final lngSpan = northEast.lng - southWest.lng;
    final latSpan = northEast.lat - southWest.lat;

    final random = new Math.Random();
    for (var i = 0; i < 5; i++) {
      final position = new gmaps.LatLng(
        southWest.lat + latSpan * random.nextDouble(),
        southWest.lng + lngSpan * random.nextDouble());
      final marker = new gmaps.Marker(new gmaps.MarkerOptions()
        ..position = position
        ..map = map
      );

      marker.title = (i + 1).toString();
      attachSecretMessage(marker, i);
    }
  });
}

// The five markers show a secret message when clicked
// but that message is not within the marker's instance data.
void attachSecretMessage(gmaps.Marker marker, num number) {
  final message = ["This","is","the","secret","message"];
  final infowindow = new gmaps.InfoWindow(new gmaps.InfoWindowOptions()
    ..content = message[number]
  );
  jsw.retainAll([infowindow, marker.map, marker]);
  marker.on.click.add((e) {
    infowindow.open(marker.map, marker);
  });
}