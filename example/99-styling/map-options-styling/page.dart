import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart' as gmaps;

void main() {
  js.scoped(() {
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 12
      ..center = new gmaps.LatLng(50.9179, -114.0140)
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ..styles = [
        new gmaps.MapTypeStyle()
          ..stylers = [
            new gmaps.MapTypeStyler()..hue = "#00ffe6",
            new gmaps.MapTypeStyler()..saturation = -20
          ],
        new gmaps.MapTypeStyle()
          ..featureType = gmaps.MapTypeStyleFeatureType.ROAD
          ..elementType = gmaps.MapTypeStyleElementType.GEOMETRY
          ..stylers = [
            new gmaps.MapTypeStyler()..lightness = 100,
            new gmaps.MapTypeStyler()..visibility = gmaps.MapTypeStylerVisibility.SIMPLIFIED
          ],
        new gmaps.MapTypeStyle()
          ..featureType = gmaps.MapTypeStyleFeatureType.ROAD
          ..elementType = gmaps.MapTypeStyleElementType.LABELS
          ..stylers = [
            new gmaps.MapTypeStyler()..visibility = gmaps.MapTypeStylerVisibility.OFF
          ]
      ]
      ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);
  });
}
