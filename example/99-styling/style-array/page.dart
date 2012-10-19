import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart' as gmaps;

void main() {
  js.scoped(() {
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 12
      ..center = new gmaps.LatLng(40.6743890, -73.9455)
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ..styles = [
        new gmaps.MapTypeStyle()
          ..featureType = gmaps.MapTypeStyleFeatureType.ALL
          ..stylers = [
            new gmaps.MapTypeStyler()..saturation = -80
          ],
        new gmaps.MapTypeStyle()
          ..featureType = gmaps.MapTypeStyleFeatureType.ROAD_ARTERIAL
          ..elementType = gmaps.MapTypeStyleElementType.GEOMETRY
          ..stylers = [
            new gmaps.MapTypeStyler()..hue = "#00ffee",
            new gmaps.MapTypeStyler()..saturation = 50
          ],
        new gmaps.MapTypeStyle()
          ..featureType = gmaps.MapTypeStyleFeatureType.POI_BUSINESS
          ..elementType = gmaps.MapTypeStyleElementType.LABELS
          ..stylers = [
            new gmaps.MapTypeStyler()..visibility = gmaps.MapTypeStylerVisibility.OFF
          ]
      ]
      ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);
  });
}
