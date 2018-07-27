import 'dart:html';
import 'dart:math';

import 'package:google_maps/google_maps.dart';
import 'package:js_wrapping/js_wrapping.dart';

GMap map;
final mapStyle = <MapTypeStyle>[
  MapTypeStyle()
    ..featureType = MapTypeStyleFeatureType.ALL
    ..elementType = MapTypeStyleElementType.ALL
    ..stylers = <MapTypeStyler>[MapTypeStyler()..visibility = 'off'],
  MapTypeStyle()
    ..featureType = MapTypeStyleFeatureType.LANDSCAPE
    ..elementType = MapTypeStyleElementType.GEOMETRY
    ..stylers = <MapTypeStyler>[
      MapTypeStyler()..visibility = 'on',
      MapTypeStyler()..color = '#fcfcfc'
    ],
  MapTypeStyle()
    ..featureType = MapTypeStyleFeatureType.WATER
    ..elementType = MapTypeStyleElementType.LABELS
    ..stylers = <MapTypeStyler>[MapTypeStyler()..visibility = 'off'],
  MapTypeStyle()
    ..featureType = MapTypeStyleFeatureType.WATER
    ..elementType = MapTypeStyleElementType.GEOMETRY
    ..stylers = <MapTypeStyler>[
      MapTypeStyler()..visibility = 'on',
      MapTypeStyler()..hue = '#5f94ff',
      MapTypeStyler()..lightness = 60
    ],
];

void main() {
  map = GMap(
      document.getElementById('map-canvas'),
      MapOptions()
        ..center = LatLng(20, -160)
        ..zoom = 3
        ..styles = mapStyle);

  map.data.style = styleFeature;

  context['eqfeed_callback'] = eqfeed_callback;

  // Get the earthquake data (JSONP format)
  // This feed is a copy from the USGS feed, you can find the originals here:
  //   http://earthquake.usgs.gov/earthquakes/feed/v1.0/geojson.php
  final script = document.createElement('script')
    ..setAttribute(
        'src', 'https://storage.googleapis.com/maps-devrel/quakes.geo.json');
  document.getElementsByTagName('head')[0].append(script);
}

// Defines the callback function referenced in the jsonp file.
void eqfeed_callback(JsObject data) {
  // TODO(aa) addGeoJson should take a Map
  map.data.addGeoJson(data);
}

DataStyleOptions styleFeature(DataFeature feature) {
  const low = [151, 83, 34]; // color of mag 1.0
  const high = [5, 69, 54]; // color of mag 6.0 and above
  const minMag = 1.0;
  const maxMag = 6.0;

  // fraction represents where the value sits between the min and max
  final fraction = (min(feature.getProperty('mag') as num, maxMag) - minMag) /
      (maxMag - minMag);

  final color = interpolateHsl(low, high, fraction);

  return DataStyleOptions()
    ..icon = (GSymbol()
      ..path = SymbolPath.CIRCLE
      ..strokeWeight = 0.5
      ..strokeColor = '#fff'
      ..fillColor = color
      ..fillOpacity = 2 / (feature.getProperty('mag') as num)
      // while an exponent would technically be correct, quadratic looks nicer
      ..scale = pow(feature.getProperty('mag') as num, 2))
    ..zIndex = (feature.getProperty('mag') as num).floor();
}

String interpolateHsl(List<num> lowHsl, List<num> highHsl, num fraction) {
  final color = List<num>(3);
  for (var i = 0; i < 3; i++) {
    // Calculate color based on the fraction.
    color[i] = (highHsl[i] - lowHsl[i]) * fraction + lowHsl[i];
  }

  return 'hsl(${color[0]},${color[1]}%,${color[2]}%)';
}
