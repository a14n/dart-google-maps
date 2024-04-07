@JS()
library;

import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

void initialize() {
  Map(
    document.getElementById('map') as HTMLElement,
    MapOptions()
      ..center = LatLng(-34.397, 150.644)
      ..zoom = 8,
  );
}

void main() {
  globalContext.setProperty('init'.toJS, initialize.toJS);

  final script = (document.createElement('script') as HTMLScriptElement)
    ..type = 'text/javascript'
    ..src =
        'https://maps.googleapis.com/maps/api/js?key=__API_KEY__&callback=init';
  document.body!.appendChild(script);
}
