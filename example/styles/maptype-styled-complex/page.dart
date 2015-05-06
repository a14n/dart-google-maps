import 'dart:html';

import 'package:google_maps/google_maps.dart';

GMap map;
final chicago = new LatLng(41.850033, -87.650052);

void main() {
  final roadAtlasStyles = <MapTypeStyle>[
    new MapTypeStyle()
      ..featureType = MapTypeStyleFeatureType.ROAD_HIGHWAY
      ..elementType = MapTypeStyleElementType.GEOMETRY
      ..stylers = <MapTypeStyler>[
        new MapTypeStyler()..hue = '#ff0022',
        new MapTypeStyler()..saturation = 60,
        new MapTypeStyler()..lightness = -20,
      ],
    new MapTypeStyle()
      ..featureType = MapTypeStyleFeatureType.ROAD_ARTERIAL
      ..elementType = MapTypeStyleElementType.ALL
      ..stylers = <MapTypeStyler>[
        new MapTypeStyler()..hue = '#2200ff',
        new MapTypeStyler()..lightness = -40,
        new MapTypeStyler()..visibility = 'simplified',
        new MapTypeStyler()..saturation = 30,
      ],
    new MapTypeStyle()
      ..featureType = MapTypeStyleFeatureType.ROAD_LOCAL
      ..elementType = MapTypeStyleElementType.ALL
      ..stylers = <MapTypeStyler>[
        new MapTypeStyler()..hue = '#f6ff00',
        new MapTypeStyler()..saturation = 50,
        new MapTypeStyler()..gamma = 0.7,
        new MapTypeStyler()..visibility = 'simplified',
      ],
    new MapTypeStyle()
      ..featureType = MapTypeStyleFeatureType.WATER
      ..elementType = MapTypeStyleElementType.GEOMETRY
      ..stylers = <MapTypeStyler>[
        new MapTypeStyler()..saturation = 40,
        new MapTypeStyler()..lightness = 40,
      ],
    new MapTypeStyle()
      ..featureType = MapTypeStyleFeatureType.ROAD_HIGHWAY
      ..elementType = MapTypeStyleElementType.LABELS
      ..stylers = <MapTypeStyler>[
        new MapTypeStyler()..saturation = 98,
        new MapTypeStyler()..visibility = 'on',
      ],
    new MapTypeStyle()
      ..featureType = MapTypeStyleFeatureType.ADMINISTRATIVE_LOCALITY
      ..elementType = MapTypeStyleElementType.LABELS
      ..stylers = <MapTypeStyler>[
        new MapTypeStyler()..hue = '#0022ff',
        new MapTypeStyler()..saturation = 50,
        new MapTypeStyler()..lightness = -10,
        new MapTypeStyler()..gamma = 0.90,
      ],
    new MapTypeStyle()
      ..featureType = MapTypeStyleFeatureType.TRANSIT_LINE
      ..elementType = MapTypeStyleElementType.GEOMETRY
      ..stylers = <MapTypeStyler>[
        new MapTypeStyler()..hue = '#ff0000',
        new MapTypeStyler()..visibility = 'on',
        new MapTypeStyler()..lightness = -70,
      ],
  ];

  final mapOptions = new MapOptions()
    ..zoom = 12
    ..center = chicago
    ..mapTypeControlOptions = (new MapTypeControlOptions()
      ..mapTypeIds = [MapTypeId.ROADMAP, 'usroadatlas']);

  map = new GMap(document.getElementById('map-canvas'), mapOptions);

  final styledMapTypeOptions = new StyledMapTypeOptions()
    ..name = 'US Road Atlas';

  final usRoadMapType =
      new StyledMapType(roadAtlasStyles, styledMapTypeOptions);

  map.mapTypes.set('usroadatlas', usRoadMapType);
  map.mapTypeId = 'usroadatlas';
}
