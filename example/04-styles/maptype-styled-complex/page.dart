import 'dart:html';

import 'package:google_maps/google_maps.dart';
import 'package:js/js_util.dart';

GMap map;
final chicago = LatLng(41.850033, -87.650052);

void main() {
  final roadAtlasStyles = <MapTypeStyle>[
    MapTypeStyle()
      ..featureType = 'road.highway'
      ..elementType = 'geometry'
      ..stylers = [
        jsify({'hue': '#ff0022'}),
        jsify({'saturation': 60}),
        jsify({'lightness': -20}),
      ],
    MapTypeStyle()
      ..featureType = 'road.arterial'
      ..elementType = 'all'
      ..stylers = [
        jsify({'hue': '#2200ff'}),
        jsify({'lightness': -40}),
        jsify({'visibility': 'simplified'}),
        jsify({'saturation': 30}),
      ],
    MapTypeStyle()
      ..featureType = 'road.local'
      ..elementType = 'all'
      ..stylers = [
        jsify({'hue': '#f6ff00'}),
        jsify({'saturation': 50}),
        jsify({'gamma': 0.7}),
        jsify({'visibility': 'simplified'}),
      ],
    MapTypeStyle()
      ..featureType = 'water'
      ..elementType = 'geometry'
      ..stylers = [
        jsify({'saturation': 40}),
        jsify({'lightness': 40}),
      ],
    MapTypeStyle()
      ..featureType = 'road.highway'
      ..elementType = 'labels'
      ..stylers = [
        jsify({'saturation': 98}),
        jsify({'visibility': 'on'}),
      ],
    MapTypeStyle()
      ..featureType = 'administrative.locality'
      ..elementType = 'labels'
      ..stylers = [
        jsify({'hue': '#0022ff'}),
        jsify({'saturation': 50}),
        jsify({'lightness': -10}),
        jsify({'gamma': 0.9}),
      ],
    MapTypeStyle()
      ..featureType = 'transit.line'
      ..elementType = 'geometry'
      ..stylers = [
        jsify({'hue': '#ff0000'}),
        jsify({'visibility': 'on'}),
        jsify({'lightness': -70}),
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
