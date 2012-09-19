#import('dart:html');
#import('../../../lib/gmaps.dart', prefix:'gmaps');

gmaps.Polyline line;

void main() {
  final mapOptions = new gmaps.MapOptions()
    ..center = new gmaps.LatLng(20.291, 153.027)
    ..zoom = 6
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ;
  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  final lineCoordinates = [
                         new gmaps.LatLng(22.291, 153.027),
                         new gmaps.LatLng(18.291, 153.027)
                         ];
  final lineSymbol = new gmaps.Symbol()
    ..path = gmaps.SymbolPath.FORWARD_CLOSED_ARROW
    ;

  line = new gmaps.Polyline(new gmaps.PolylineOptions()
    ..path = lineCoordinates
    ..icons = [new gmaps.IconSequence()
      ..icon = lineSymbol
      ..offset = '100%'
    ]
    ..map = map
  );
}