#import('dart:html');
#import('../../../gmaps.dart', prefix:'gmaps');

void main() {
  final chicago = new gmaps.LatLng(41.850033, -87.650052);

  var roadAtlasStyles = [
    new gmaps.MapTypeStyle()
      ..featureType = gmaps.MapTypeStyleFeatureType.ROAD_HIGHWAY
      ..elementType = gmaps.MapTypeStyleElementType.GEOMETRY
      ..stylers = [
        new gmaps.MapTypeStyler()..hue = "#ff0022",
        new gmaps.MapTypeStyler()..saturation = 60,
        new gmaps.MapTypeStyler()..lightness = -20
      ],
    new gmaps.MapTypeStyle()
      ..featureType = gmaps.MapTypeStyleFeatureType.ROAD_ARTERIAL
      ..elementType = gmaps.MapTypeStyleElementType.ALL
      ..stylers = [
        new gmaps.MapTypeStyler()..hue = "#2200ff",
        new gmaps.MapTypeStyler()..lightness = -40,
        new gmaps.MapTypeStyler()..visibility = gmaps.MapTypeStylerVisibility.SIMPLIFIED,
        new gmaps.MapTypeStyler()..saturation = 30
      ],
    new gmaps.MapTypeStyle()
      ..featureType = gmaps.MapTypeStyleFeatureType.ROAD_LOCAL
      ..elementType = gmaps.MapTypeStyleElementType.ALL
      ..stylers = [
        new gmaps.MapTypeStyler()..hue = "#f6ff00",
        new gmaps.MapTypeStyler()..saturation = 50,
        new gmaps.MapTypeStyler()..gamma = 0.7,
        new gmaps.MapTypeStyler()..visibility = gmaps.MapTypeStylerVisibility.SIMPLIFIED
      ],
    new gmaps.MapTypeStyle()
      ..featureType = gmaps.MapTypeStyleFeatureType.WATER
      ..elementType = gmaps.MapTypeStyleElementType.GEOMETRY
      ..stylers = [
        new gmaps.MapTypeStyler()..saturation = 40,
        new gmaps.MapTypeStyler()..lightness = 40
      ],
    new gmaps.MapTypeStyle()
      ..featureType = gmaps.MapTypeStyleFeatureType.ROAD_HIGHWAY
      ..elementType = gmaps.MapTypeStyleElementType.LABELS
      ..stylers = [
        new gmaps.MapTypeStyler()..visibility = gmaps.MapTypeStylerVisibility.ON,
        new gmaps.MapTypeStyler()..saturation = 98
      ],
    new gmaps.MapTypeStyle()
      ..featureType = gmaps.MapTypeStyleFeatureType.ADMINISTRATIVE_LOCALITY
      ..elementType = gmaps.MapTypeStyleElementType.LABELS
      ..stylers = [
        new gmaps.MapTypeStyler()..hue = "#0022ff",
        new gmaps.MapTypeStyler()..saturation = 50,
        new gmaps.MapTypeStyler()..lightness = -10,
        new gmaps.MapTypeStyler()..gamma = 0.90
      ],
    new gmaps.MapTypeStyle()
      ..featureType = gmaps.MapTypeStyleFeatureType.TRANSIT_LINE
      ..elementType = gmaps.MapTypeStyleElementType.GEOMETRY
      ..stylers = [
        new gmaps.MapTypeStyler()..hue = '#ff0000',
        new gmaps.MapTypeStyler()..visibility = gmaps.MapTypeStylerVisibility.ON,
        new gmaps.MapTypeStyler()..lightness = -70
      ]
  ];

  final mapOptions = new gmaps.MapOptions()
    ..zoom = 12
    ..center = chicago
    ..mapTypeControlOptions = (new gmaps.MapTypeControlOptions()
      ..mapTypeIds = [gmaps.MapTypeId.ROADMAP, 'usroadatlas']
    )
    ;

  final map = new gmaps.GMap(query('#map_canvas'), mapOptions);

  final styledMapOptions = new gmaps.StyledMapTypeOptions()
    ..name = 'US Road Atlas'
    ;

  final usRoadMapType = new gmaps.StyledMapType(roadAtlasStyles, styledMapOptions);

  map.mapTypes.set_('usroadatlas', usRoadMapType);
  map.setMapTypeId('usroadatlas');
}
