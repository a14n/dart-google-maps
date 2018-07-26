import 'dart:html';

import 'package:google_maps/google_maps.dart';

GMap map;
final chicago = LatLng(41.850033, -87.650052);

void main() {
  final roadAtlasStyles = <MapTypeStyle>[
    MapTypeStyle()
      ..featureType = MapTypeStyleFeatureType.ROAD_HIGHWAY
      ..elementType = MapTypeStyleElementType.GEOMETRY
      ..stylers = <MapTypeStyler>[
        MapTypeStyler()..hue = '#ff0022',
        MapTypeStyler()..saturation = 60,
        MapTypeStyler()..lightness = -20,
      ],
    MapTypeStyle()
      ..featureType = MapTypeStyleFeatureType.ROAD_ARTERIAL
      ..elementType = MapTypeStyleElementType.ALL
      ..stylers = <MapTypeStyler>[
        MapTypeStyler()..hue = '#2200ff',
        MapTypeStyler()..lightness = -40,
        MapTypeStyler()..visibility = 'simplified',
        MapTypeStyler()..saturation = 30,
      ],
    MapTypeStyle()
      ..featureType = MapTypeStyleFeatureType.ROAD_LOCAL
      ..elementType = MapTypeStyleElementType.ALL
      ..stylers = <MapTypeStyler>[
        MapTypeStyler()..hue = '#f6ff00',
        MapTypeStyler()..saturation = 50,
        MapTypeStyler()..gamma = 0.7,
        MapTypeStyler()..visibility = 'simplified',
      ],
    MapTypeStyle()
      ..featureType = MapTypeStyleFeatureType.WATER
      ..elementType = MapTypeStyleElementType.GEOMETRY
      ..stylers = <MapTypeStyler>[
        MapTypeStyler()..saturation = 40,
        MapTypeStyler()..lightness = 40,
      ],
    MapTypeStyle()
      ..featureType = MapTypeStyleFeatureType.ROAD_HIGHWAY
      ..elementType = MapTypeStyleElementType.LABELS
      ..stylers = <MapTypeStyler>[
        MapTypeStyler()..saturation = 98,
        MapTypeStyler()..visibility = 'on',
      ],
    MapTypeStyle()
      ..featureType = MapTypeStyleFeatureType.ADMINISTRATIVE_LOCALITY
      ..elementType = MapTypeStyleElementType.LABELS
      ..stylers = <MapTypeStyler>[
        MapTypeStyler()..hue = '#0022ff',
        MapTypeStyler()..saturation = 50,
        MapTypeStyler()..lightness = -10,
        MapTypeStyler()..gamma = 0.90,
      ],
    MapTypeStyle()
      ..featureType = MapTypeStyleFeatureType.TRANSIT_LINE
      ..elementType = MapTypeStyleElementType.GEOMETRY
      ..stylers = <MapTypeStyler>[
        MapTypeStyler()..hue = '#ff0000',
        MapTypeStyler()..visibility = 'on',
        MapTypeStyler()..lightness = -70,
      ],
  ];

  final mapOptions = MapOptions()
    ..zoom = 12
    ..center = chicago
    ..mapTypeControlOptions = (MapTypeControlOptions()
      ..mapTypeIds = [MapTypeId.ROADMAP, 'usroadatlas']);

  map = GMap(document.getElementById('map-canvas'), mapOptions);

  final styledMapTypeOptions = StyledMapTypeOptions()..name = 'US Road Atlas';

  final usRoadMapType = StyledMapType(roadAtlasStyles, styledMapTypeOptions);

  map.mapTypes.set('usroadatlas', usRoadMapType);
  map.mapTypeId = 'usroadatlas';
}
