#import('dart:html');
#import('dart:math');
#import('../../../gmaps.dart', prefix:'gmaps');

void main() {
  final style1_styler1 = new gmaps.MapTypeStyler();
  style1_styler1.hue = "#00ffe6";
  final style1_styler2 = new gmaps.MapTypeStyler();
  style1_styler2.saturation = -20;
  final style1 = new gmaps.MapTypeStyle();
  style1.stylers = [style1_styler1, style1_styler2];

  final style2_styler1 = new gmaps.MapTypeStyler();
  style2_styler1.lightness = 100;
  final style2_styler2 = new gmaps.MapTypeStyler();
  style2_styler2.visibility = gmaps.MapTypeStylerVisibility.SIMPLIFED;
  final style2 = new gmaps.MapTypeStyle();
  style2.featureType = gmaps.MapTypeStyleFeatureType.ROAD;
  style2.elementType = gmaps.MapTypeStyleElementType.GEOMETRY;
  style2.stylers = [style2_styler1, style2_styler2];

  final style3_styler = new gmaps.MapTypeStyler();
  style3_styler.visibility = gmaps.MapTypeStylerVisibility.OFF;
  final style3 = new gmaps.MapTypeStyle();
  style3.featureType = gmaps.MapTypeStyleFeatureType.ROAD;
  style3.elementType = gmaps.MapTypeStyleElementType.LABELS;
  style3.stylers = [style3_styler];

  final styles = [style1, style2, style3];
  
  // Create a new StyledMapType object, passing it the array of styles,
  // as well as the name to be displayed on the map type control.
  final styledMapTypeOptions = new gmaps.StyledMapTypeOptions();
  styledMapTypeOptions.name = "Styled Map";
  final styledMapType = new gmaps.StyledMapType(styles, styledMapTypeOptions);

  final mapTypeControlOptions = new gmaps.MapTypeControlOptions();
  mapTypeControlOptions.mapTypeIds = [gmaps.MapTypeId.ROADMAP,
                                      gmaps.MapTypeId.SATELLITE,
                                      gmaps.MapTypeId.HYBRID,
                                      gmaps.MapTypeId.TERRAIN, 
                                      'styled_maps'];
  final mapOptions = new gmaps.MapOptions();
  mapOptions.zoom = 12;
  mapOptions.center = new gmaps.LatLng(50.9818, -114.1219);
  mapOptions.mapTypeControlOptions = mapTypeControlOptions;
  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  // Associate the styled map with the MapTypeId and set it to display.
  map.mapTypes.set_('styled_maps', styledMapType);
  map.setMapTypeId('styled_maps');
}
