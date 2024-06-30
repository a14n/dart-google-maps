import 'dart:js_interop';
import 'dart:js_interop_unsafe';
import 'dart:math';

import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

late Map map;
final mapStyle = <MapTypeStyle>[
  MapTypeStyle()
    ..featureType = 'all'
    ..elementType = 'all'
    ..stylers = [
      {'visibility': 'off'}.jsify() as JSObject,
    ],
  MapTypeStyle()
    ..featureType = 'landscape'
    ..elementType = 'geometry'
    ..stylers = [
      {'visibility': 'on'}.jsify() as JSObject,
      {'color': '#fcfcfc'}.jsify() as JSObject,
    ],
  MapTypeStyle()
    ..featureType = 'water'
    ..elementType = 'labels'
    ..stylers = [
      {'visibility': 'off'}.jsify() as JSObject,
    ],
  MapTypeStyle()
    ..featureType = 'water'
    ..elementType = 'geometry'
    ..stylers = [
      {'visibility': 'on'}.jsify() as JSObject,
      {'hue': '#5f94ff'}.jsify() as JSObject,
      {'lightness': '60'}.jsify() as JSObject,
    ],
];

@JS('window')
external JSObject get window;

void main() {
  map = Map(
      document.getElementById('map-canvas') as HTMLElement,
      MapOptions()
        ..center = LatLng(20, -160)
        ..zoom = 3
        ..styles = mapStyle);

  map.data.style = styleFeature.toJS;

  window.setProperty('eqfeed_callback'.toJS, eqfeed_callback.toJS);

  // Get the earthquake data (JSONP format)
  // This feed is a copy from the USGS feed, you can find the originals here:
  //   http://earthquake.usgs.gov/earthquakes/feed/v1.0/geojson.php
  final script = document.createElement('script')
    ..setAttribute(
        'src', 'https://storage.googleapis.com/maps-devrel/quakes.geo.json');
  (document.getElementsByTagName('head').item(0) as HTMLElement)
      .appendChild(script);
}

// Defines the callback function referenced in the jsonp file.
void eqfeed_callback(JSObject data) {
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
    ..icon = (Symbol()
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
  final color = <num>[
    // Calculate color based on the fraction.
    for (var i = 0; i < 3; i++) (highHsl[i] - lowHsl[i]) * fraction + lowHsl[i],
  ];

  return 'hsl(${color[0]},${color[1]}%,${color[2]}%)';
}
