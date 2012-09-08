#import('dart:html');
#import('../../../gmaps.dart', prefix:'gmaps');

gmaps.Polyline line;

void main() {
  final myLatLng = new gmaps.LatLng(20.291, 153.027);
  final mapOptions = new gmaps.MapOptions()
    ..zoom = 6
    ..center = myLatLng
    ..mapTypeId = gmaps.MapTypeId.TERRAIN
    ;
  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  final lineCoordinates = [
    new gmaps.LatLng(22.291, 153.027),
    new gmaps.LatLng(18.291, 153.027)
  ];
  final lineSymbol = new gmaps.Symbol()
    ..path = 'M 0,-1 0,1'
    ..strokeOpacity = 1
    ..scale = 4
    ;

  line = new gmaps.Polyline(new gmaps.PolylineOptions()
    ..path = lineCoordinates
    ..strokeOpacity = 0
    ..icons = [new gmaps.IconSequence()
      ..icon = lineSymbol
      ..offset = '0'
      ..repeat = '20px'
    ]
    ..map = map
  );
}