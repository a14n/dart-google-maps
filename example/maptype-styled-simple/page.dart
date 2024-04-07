import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

late Map map;
final brooklyn = LatLng(40.6743890, -73.9455);

const MY_MAPTYPE_ID = 'custom_style';

void main() {
  final featureOpts = <MapTypeStyle>[
    MapTypeStyle()
      ..stylers = [
        {'hue': '#890000'},
        {'visibility': 'simplified'},
        {'gamma': 0.5},
        {'weight': 0.5},
      ].jsify() as JSArray<JSObject>,
    MapTypeStyle()
      ..elementType = 'labels'
      ..stylers = [
        {'visibility': 'off'},
      ].jsify() as JSArray<JSObject>,
    MapTypeStyle()
      ..featureType = 'water'
      ..stylers = [
        {'color': '#890000'},
      ].jsify() as JSArray<JSObject>,
  ];

  final mapOptions = MapOptions()
    ..zoom = 12
    ..center = brooklyn
    ..mapTypeControlOptions = (MapTypeControlOptions()
      ..mapTypeIds = [MapTypeId.ROADMAP, MY_MAPTYPE_ID.toJS].toJS)
    ..mapTypeId = MY_MAPTYPE_ID.toJS;

  map = Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  final styledMapTypeOptions = StyledMapTypeOptions()..name = 'Custom Style';

  final customMapType = StyledMapType(featureOpts.toJS, styledMapTypeOptions);

  map.mapTypes.set(MY_MAPTYPE_ID, customMapType);
}
