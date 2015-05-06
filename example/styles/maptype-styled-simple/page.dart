import 'dart:html';

import 'package:google_maps/google_maps.dart';

GMap map;
final brooklyn = new LatLng(40.6743890, -73.9455);

const MY_MAPTYPE_ID = 'custom_style';

void main() {
  final featureOpts = <MapTypeStyle>[
    new MapTypeStyle()
      ..stylers = <MapTypeStyler>[
        new MapTypeStyler()..hue = '#890000',
        new MapTypeStyler()..visibility = 'simplified',
        new MapTypeStyler()..gamma = 0.5,
        new MapTypeStyler()..weight = 0.5
      ],
    new MapTypeStyle()
      ..elementType = MapTypeStyleElementType.LABELS
      ..stylers = <MapTypeStyler>[new MapTypeStyler()..visibility = 'off'],
    new MapTypeStyle()
      ..featureType = MapTypeStyleFeatureType.WATER
      ..stylers = <MapTypeStyler>[new MapTypeStyler()..color = '#890000']
  ];

  final mapOptions = new MapOptions()
    ..zoom = 12
    ..center = brooklyn
    ..mapTypeControlOptions = (new MapTypeControlOptions()
      ..mapTypeIds = [MapTypeId.ROADMAP, MY_MAPTYPE_ID])
    ..mapTypeId = MY_MAPTYPE_ID;

  map = new GMap(document.getElementById('map-canvas'), mapOptions);

  final styledMapTypeOptions = new StyledMapTypeOptions()
    ..name = 'Custom Style';

  final customMapType = new StyledMapType(featureOpts, styledMapTypeOptions);

  map.mapTypes.set(MY_MAPTYPE_ID, customMapType);
}
