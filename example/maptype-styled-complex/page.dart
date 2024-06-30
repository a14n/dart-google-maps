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
        {'hue': '#ff0022'}.jsify() as JSObject,
        {'saturation': 60}.jsify() as JSObject,
        {'lightness': -20}.jsify() as JSObject,
      ],
    MapTypeStyle()
      ..featureType = 'road.arterial'
      ..elementType = 'all'
      ..stylers = [
        {'hue': '#2200ff'}.jsify() as JSObject,
        {'lightness': -40}.jsify() as JSObject,
        {'visibility': 'simplified'}.jsify() as JSObject,
        {'saturation': 30}.jsify() as JSObject,
      ],
    MapTypeStyle()
      ..featureType = 'road.local'
      ..elementType = 'all'
      ..stylers = [
        {'hue': '#f6ff00'}.jsify() as JSObject,
        {'saturation': 50}.jsify() as JSObject,
        {'gamma': 0.7}.jsify() as JSObject,
        {'visibility': 'simplified'}.jsify() as JSObject,
      ],
    MapTypeStyle()
      ..featureType = 'water'
      ..elementType = 'geometry'
      ..stylers = [
        {'saturation': 40}.jsify() as JSObject,
        {'lightness': 40}.jsify() as JSObject,
      ],
    MapTypeStyle()
      ..featureType = 'road.highway'
      ..elementType = 'labels'
      ..stylers = [
        {'saturation': 98}.jsify() as JSObject,
        {'visibility': 'on'}.jsify() as JSObject,
      ],
    MapTypeStyle()
      ..featureType = 'administrative.locality'
      ..elementType = 'labels'
      ..stylers = [
        {'hue': '#0022ff'}.jsify() as JSObject,
        {'saturation': 50}.jsify() as JSObject,
        {'lightness': -10}.jsify() as JSObject,
        {'gamma': 0.9}.jsify() as JSObject,
      ],
    MapTypeStyle()
      ..featureType = 'transit.line'
      ..elementType = 'geometry'
      ..stylers = [
        {'hue': '#ff0000'}.jsify() as JSObject,
        {'visibility': 'on'}.jsify() as JSObject,
        {'lightness': -70}.jsify() as JSObject,
      ],
  ];

  final mapOptions = MapOptions()
    ..zoom = 12
    ..center = chicago
    ..mapTypeControlOptions = (MapTypeControlOptions()
      ..mapTypeIds = [MapTypeId.ROADMAP, 'usroadatlas'.toJS]);

  map = Map(document.getElementById('map-canvas') as HTMLElement, mapOptions);

  final styledMapTypeOptions = StyledMapTypeOptions()..name = 'US Road Atlas';

  final usRoadMapType =
      StyledMapType(roadAtlasStyles.toJS, styledMapTypeOptions);

  map.mapTypes.set('usroadatlas', usRoadMapType);
  map.mapTypeId = 'usroadatlas'.toJS;
}
