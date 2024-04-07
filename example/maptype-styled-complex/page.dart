import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

late Map map;
final chicago = LatLng(41.850033, -87.650052);

void main() {
  final roadAtlasStyles = <MapTypeStyle>[
    MapTypeStyle()
      ..featureType = 'road.highway'
      ..elementType = 'geometry'
      ..stylers = [
        {'hue': '#ff0022'},
        {'saturation': 60},
        {'lightness': -20},
      ].jsify() as JSArray<JSObject>,
    MapTypeStyle()
      ..featureType = 'road.arterial'
      ..elementType = 'all'
      ..stylers = [
        {'hue': '#2200ff'},
        {'lightness': -40},
        {'visibility': 'simplified'},
        {'saturation': 30},
      ].jsify() as JSArray<JSObject>,
    MapTypeStyle()
      ..featureType = 'road.local'
      ..elementType = 'all'
      ..stylers = [
        {'hue': '#f6ff00'},
        {'saturation': 50},
        {'gamma': 0.7},
        {'visibility': 'simplified'},
      ].jsify() as JSArray<JSObject>,
    MapTypeStyle()
      ..featureType = 'water'
      ..elementType = 'geometry'
      ..stylers = [
        {'saturation': 40},
        {'lightness': 40},
      ].jsify() as JSArray<JSObject>,
    MapTypeStyle()
      ..featureType = 'road.highway'
      ..elementType = 'labels'
      ..stylers = [
        {'saturation': 98},
        {'visibility': 'on'},
      ].jsify() as JSArray<JSObject>,
    MapTypeStyle()
      ..featureType = 'administrative.locality'
      ..elementType = 'labels'
      ..stylers = [
        {'hue': '#0022ff'},
        {'saturation': 50},
        {'lightness': -10},
        {'gamma': 0.9},
      ].jsify() as JSArray<JSObject>,
    MapTypeStyle()
      ..featureType = 'transit.line'
      ..elementType = 'geometry'
      ..stylers = [
        {'hue': '#ff0000'},
        {'visibility': 'on'},
        {'lightness': -70},
      ].jsify() as JSArray<JSObject>,
  ];

  final mapOptions = MapOptions()
    ..zoom = 12
    ..center = chicago
    ..mapTypeControlOptions = (MapTypeControlOptions()
      ..mapTypeIds = [MapTypeId.ROADMAP, 'usroadatlas'.toJS].toJS);

  map = Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  final styledMapTypeOptions = StyledMapTypeOptions()..name = 'US Road Atlas';

  final usRoadMapType =
      StyledMapType(roadAtlasStyles.toJS, styledMapTypeOptions);

  map.mapTypes.set('usroadatlas', usRoadMapType);
  map.mapTypeId = 'usroadatlas'.toJS;
}
