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
        {'hue': '#890000'}.jsify() as JSObject,
        {'visibility': 'simplified'}.jsify() as JSObject,
        {'gamma': 0.5}.jsify() as JSObject,
        {'weight': 0.5}.jsify() as JSObject,
      ],
    MapTypeStyle()
      ..elementType = 'labels'
      ..stylers = [
        {'visibility': 'off'}.jsify() as JSObject,
      ],
    MapTypeStyle()
      ..featureType = 'water'
      ..stylers = [
        {'color': '#890000'}.jsify() as JSObject,
      ],
  ];

  final mapOptions = MapOptions()
    ..zoom = 12
    ..center = brooklyn
    ..mapTypeControlOptions = (MapTypeControlOptions()
      ..mapTypeIds = [MapTypeId.ROADMAP, MY_MAPTYPE_ID.toJS])
    ..mapTypeId = MY_MAPTYPE_ID.toJS;

  map = Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  final styledMapTypeOptions = StyledMapTypeOptions()..name = 'Custom Style';

  final customMapType = StyledMapType(featureOpts.toJS, styledMapTypeOptions);

  map.mapTypes.set(MY_MAPTYPE_ID, customMapType);
}
