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
  
  final mapOptions = new gmaps.MapOptions();
  mapOptions.zoom = 12;
  mapOptions.center = new gmaps.LatLng(50.9179, -114.0140);
  mapOptions.mapTypeId = gmaps.MapTypeId.ROADMAP;
  mapOptions.styles = [style1, style3, style3];
  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);
}
