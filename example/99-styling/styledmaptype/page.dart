import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart' as gmaps;

void main() {
  js.scoped(() {
    final styles = [
      new gmaps.MapTypeStyle()
        ..stylers = [
          new gmaps.MapTypeStyler()..hue = "#00ffe6",
          new gmaps.MapTypeStyler()..saturation = -20
        ],
      new gmaps.MapTypeStyle()
        ..featureType = gmaps.MapTypeStyleFeatureType.ROAD
        ..elementType = gmaps.MapTypeStyleElementType.GEOMETRY
        ..stylers = [
          new gmaps.MapTypeStyler()..lightness = 100,
          new gmaps.MapTypeStyler()..visibility = gmaps.MapTypeStylerVisibility.SIMPLIFIED
        ],
      new gmaps.MapTypeStyle()
        ..featureType = gmaps.MapTypeStyleFeatureType.ROAD
        ..elementType = gmaps.MapTypeStyleElementType.LABELS
        ..stylers = [
          new gmaps.MapTypeStyler()..visibility = gmaps.MapTypeStylerVisibility.OFF
        ]
    ];

    // Create a new StyledMapType object, passing it the array of styles,
    // as well as the name to be displayed on the map type control.
    final styledMapTypeOptions = new gmaps.StyledMapTypeOptions();
    styledMapTypeOptions.name = "Styled Map";
    final styledMapType = new gmaps.StyledMapType(styles, styledMapTypeOptions);

    final mapOptions = new gmaps.MapOptions()
      ..zoom = 11
      ..center = new gmaps.LatLng(55.6468, 37.581)
      ..mapTypeControlOptions = (new gmaps.MapTypeControlOptions()
        ..mapTypeIds = [
          gmaps.MapTypeId.ROADMAP,
          'map_style'
        ]
      )
      ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

    // Associate the styled map with the MapTypeId and set it to display.
    map.mapTypes.set('map_style', styledMapType);
    map.mapTypeId = 'map_style';
  });
}
