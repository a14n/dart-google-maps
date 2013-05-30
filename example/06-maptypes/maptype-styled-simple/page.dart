import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/google_maps.dart';

const MY_MAPTYPE_ID = 'hiphop';

void main() {
  final brooklyn = new LatLng(40.6743890, -73.9455);

  var stylez = [
    new MapTypeStyle()
      ..featureType = MapTypeStyleFeatureType.ROAD
      ..elementType = MapTypeStyleElementType.GEOMETRY
      ..stylers = [
        new MapTypeStyler()..hue = "-45", // TODO report error of value
        new MapTypeStyler()..saturation = 100
      ],
    new MapTypeStyle()
      ..featureType = MapTypeStyleFeatureType.LANDSCAPE
      ..elementType = MapTypeStyleElementType.GEOMETRY
      ..stylers = [
        new MapTypeStyler()..hue = '#000000',
        new MapTypeStyler()..saturation = 75,
        new MapTypeStyler()..lightness = -100
      ]
  ];

  final mapOptions = new MapOptions()
    ..zoom = 12
    ..center = brooklyn
    ..mapTypeControlOptions = (new MapTypeControlOptions()
      ..mapTypeIds = [MapTypeId.ROADMAP, MY_MAPTYPE_ID]
    )
    ..mapTypeId = MY_MAPTYPE_ID
    ;

  final map = new GMap(query('#map_canvas'), mapOptions);

  final styledMapOptions = new StyledMapTypeOptions()
    ..name = 'Hip-Hop'
    ;

  final jayzMapType = new StyledMapType(stylez, styledMapOptions);

  map.mapTypes.set(MY_MAPTYPE_ID, jayzMapType);
}
