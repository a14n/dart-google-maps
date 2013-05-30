import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/google_maps.dart';

void main() {
  final styles = [
    new MapTypeStyle()
      ..stylers = [
        new MapTypeStyler()..hue = "#00ffe6",
        new MapTypeStyler()..saturation = -20
      ],
    new MapTypeStyle()
      ..featureType = MapTypeStyleFeatureType.ROAD
      ..elementType = MapTypeStyleElementType.GEOMETRY
      ..stylers = [
        new MapTypeStyler()..lightness = 100,
        new MapTypeStyler()..visibility = MapTypeStylerVisibility.SIMPLIFIED
      ],
    new MapTypeStyle()
      ..featureType = MapTypeStyleFeatureType.ROAD
      ..elementType = MapTypeStyleElementType.LABELS
      ..stylers = [
        new MapTypeStyler()..visibility = MapTypeStylerVisibility.OFF
      ]
  ];

  // Create a new StyledMapType object, passing it the array of styles,
  // as well as the name to be displayed on the map type control.
  final styledMapTypeOptions = new StyledMapTypeOptions();
  styledMapTypeOptions.name = "Styled Map";
  final styledMapType = new StyledMapType(styles, styledMapTypeOptions);

  final mapOptions = new MapOptions()
    ..zoom = 11
    ..center = new LatLng(55.6468, 37.581)
    ..mapTypeControlOptions = (new MapTypeControlOptions()
      ..mapTypeIds = [
        MapTypeId.ROADMAP,
        'map_style'
      ]
    )
    ;
  final map = new GMap(query("#map_canvas"), mapOptions);

  // Associate the styled map with the MapTypeId and set it to display.
  map.mapTypes.set('map_style', styledMapType);
  map.mapTypeId = 'map_style';
}
