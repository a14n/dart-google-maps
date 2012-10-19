import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart' as gmaps;

void main() {
  js.scoped(() {
    // Create an object containing LatLng, population.
    final citymap = {};
    citymap['chicago'] = {
      "center" : new gmaps.LatLng(41.878113, -87.629798),
      "population" : 2842518
    };
    citymap['newyork'] = {
      "center" : new gmaps.LatLng(40.714352, -74.005973),
      "population" : 8143197
    };
    citymap['losangeles'] = {
      "center" : new gmaps.LatLng(34.052234, -118.243684),
      "population" : 3844829
    };

    final mapOptions = new gmaps.MapOptions()
      ..zoom = 4
      ..center = new gmaps.LatLng(37.09024, -95.712891)
      ..mapTypeId = gmaps.MapTypeId.TERRAIN
      ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

    citymap.forEach((String name, Map city) {
      // Construct the circle for each value in citymap. We scale population by 20.
      final populationOptions = new gmaps.CircleOptions()
        ..strokeColor = '#FF0000'
        ..strokeOpacity = 0.8
        ..strokeWeight = 2
        ..fillColor = '#FF0000'
        ..fillOpacity = 0.35
        ..map = map
        ..center = city["center"]
        ..radius = city["population"] / 20
        ;
      new gmaps.Circle(populationOptions);
    });
  });
}
