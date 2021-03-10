import 'dart:html';

import 'package:google_maps/google_maps.dart';
import 'package:js/js_util.dart';

late GMap map;
final brooklyn = LatLng(40.6743890, -73.9455);

const MY_MAPTYPE_ID = 'custom_style';

void main() {
  final featureOpts = <MapTypeStyle>[
    MapTypeStyle()
      ..stylers = [
        jsify({'hue': '#890000'}),
        jsify({'visibility': 'simplified'}),
        jsify({'gamma': 0.5}),
        jsify({'weight': 0.5}),
      ],
    MapTypeStyle()
      ..elementType = 'labels'
      ..stylers = [
        jsify({'visibility': 'off'}),
      ],
    MapTypeStyle()
      ..featureType = 'water'
      ..stylers = [
        jsify({'color': '#890000'}),
      ]
  ];

  final mapOptions = MapOptions()
    ..zoom = 12
    ..center = brooklyn
    ..mapTypeControlOptions = (MapTypeControlOptions()
      ..mapTypeIds = [MapTypeId.ROADMAP, MY_MAPTYPE_ID])
    ..mapTypeId = MY_MAPTYPE_ID;

  map = GMap(document.getElementById('map-canvas'), mapOptions);

  final styledMapTypeOptions = StyledMapTypeOptions()..name = 'Custom Style';

  final customMapType = StyledMapType(featureOpts, styledMapTypeOptions);

  map.mapTypes!.set(MY_MAPTYPE_ID, customMapType);
}
