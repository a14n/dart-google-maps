@JS()
library example;

import 'package:google_maps/google_maps.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';
import 'package:web/web.dart';

void initialize() {
  GMap(
    document.getElementById('map') as HTMLElement,
    MapOptions()
      ..center = LatLng(-34.397, 150.644)
      ..zoom = 8,
  );
}

void main() {
  setProperty(window, 'init', allowInterop(initialize));

  final script = (document.createElement('script') as HTMLScriptElement)
    ..type = 'text/javascript'
    ..src =
        'https://maps.googleapis.com/maps/api/js?key=__API_KEY__&callback=init';
  document.body!.appendChild(script);
}

@JS()
external Object get window;
