#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:google_maps/jswrap.dart', prefix:'jsw');
#import('package:google_maps/gmaps.dart', prefix:'gmaps');

const MY_MAPTYPE_ID = 'hiphop';

void main() {
  js.scoped(() {
    final brooklyn = new gmaps.LatLng(40.6743890, -73.9455);

    var stylez = [
      new gmaps.MapTypeStyle()
        ..featureType = gmaps.MapTypeStyleFeatureType.ROAD
        ..elementType = gmaps.MapTypeStyleElementType.GEOMETRY
        ..stylers = [
          new gmaps.MapTypeStyler()..hue = "-45", // TODO report error of value
          new gmaps.MapTypeStyler()..saturation = 100
        ],
      new gmaps.MapTypeStyle()
        ..featureType = gmaps.MapTypeStyleFeatureType.LANDSCAPE
        ..elementType = gmaps.MapTypeStyleElementType.GEOMETRY
        ..stylers = [
          new gmaps.MapTypeStyler()..hue = '#000000',
          new gmaps.MapTypeStyler()..saturation = 75,
          new gmaps.MapTypeStyler()..lightness = -100
        ]
    ];

    final mapOptions = new gmaps.MapOptions()
      ..zoom = 12
      ..center = brooklyn
      ..mapTypeControlOptions = (new gmaps.MapTypeControlOptions()
        ..mapTypeIds = [gmaps.MapTypeId.ROADMAP, MY_MAPTYPE_ID]
      )
      ..mapTypeId = MY_MAPTYPE_ID
      ;

    final map = new gmaps.GMap(query('#map_canvas'), mapOptions);

    final styledMapOptions = new gmaps.StyledMapTypeOptions()
      ..name = 'Hip-Hop'
      ;

    final jayzMapType = new gmaps.StyledMapType(stylez, styledMapOptions);

    map.mapTypes.set(MY_MAPTYPE_ID, jayzMapType);
  });
}
