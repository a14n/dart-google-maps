import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  final chicago = new LatLng(41.850033, -87.650052);

  var roadAtlasStyles = [
    new MapTypeStyle()
      ..featureType = MapTypeStyleFeatureType.ROAD_HIGHWAY
      ..elementType = MapTypeStyleElementType.GEOMETRY
      ..stylers = [
        new MapTypeStyler()..hue = "#ff0022",
        new MapTypeStyler()..saturation = 60,
        new MapTypeStyler()..lightness = -20
      ],
    new MapTypeStyle()
      ..featureType = MapTypeStyleFeatureType.ROAD_ARTERIAL
      ..elementType = MapTypeStyleElementType.ALL
      ..stylers = [
        new MapTypeStyler()..hue = "#2200ff",
        new MapTypeStyler()..lightness = -40,
        new MapTypeStyler()..visibility = MapTypeStylerVisibility.SIMPLIFIED,
        new MapTypeStyler()..saturation = 30
      ],
    new MapTypeStyle()
      ..featureType = MapTypeStyleFeatureType.ROAD_LOCAL
      ..elementType = MapTypeStyleElementType.ALL
      ..stylers = [
        new MapTypeStyler()..hue = "#f6ff00",
        new MapTypeStyler()..saturation = 50,
        new MapTypeStyler()..gamma = 0.7,
        new MapTypeStyler()..visibility = MapTypeStylerVisibility.SIMPLIFIED
      ],
    new MapTypeStyle()
      ..featureType = MapTypeStyleFeatureType.WATER
      ..elementType = MapTypeStyleElementType.GEOMETRY
      ..stylers = [
        new MapTypeStyler()..saturation = 40,
        new MapTypeStyler()..lightness = 40
      ],
    new MapTypeStyle()
      ..featureType = MapTypeStyleFeatureType.ROAD_HIGHWAY
      ..elementType = MapTypeStyleElementType.LABELS
      ..stylers = [
        new MapTypeStyler()..visibility = MapTypeStylerVisibility.ON,
        new MapTypeStyler()..saturation = 98
      ],
    new MapTypeStyle()
      ..featureType = MapTypeStyleFeatureType.ADMINISTRATIVE_LOCALITY
      ..elementType = MapTypeStyleElementType.LABELS
      ..stylers = [
        new MapTypeStyler()..hue = "#0022ff",
        new MapTypeStyler()..saturation = 50,
        new MapTypeStyler()..lightness = -10,
        new MapTypeStyler()..gamma = 0.90
      ],
    new MapTypeStyle()
      ..featureType = MapTypeStyleFeatureType.TRANSIT_LINE
      ..elementType = MapTypeStyleElementType.GEOMETRY
      ..stylers = [
        new MapTypeStyler()..hue = '#ff0000',
        new MapTypeStyler()..visibility = MapTypeStylerVisibility.ON,
        new MapTypeStyler()..lightness = -70
      ]
  ];

  final mapOptions = new MapOptions()
    ..zoom = 12
    ..center = chicago
    ..mapTypeControlOptions = (new MapTypeControlOptions()
      ..mapTypeIds = [MapTypeId.ROADMAP, 'usroadatlas']
    )
    ;

  final map = new GMap(querySelector('#map_canvas'), mapOptions);

  final styledMapOptions = new StyledMapTypeOptions()
    ..name = 'US Road Atlas'
    ;

  final usRoadMapType = new StyledMapType(roadAtlasStyles, styledMapOptions);

  map.mapTypes.set('usroadatlas', usRoadMapType);
  map.mapTypeId = 'usroadatlas';
}
