#import('dart:html');
#import('../../../gmaps.dart', prefix:'gmaps');

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

  final symbolOne = new gmaps.Symbol()
    ..path = 'M -2,0 0,-2 2,0 0,2 z'
    ..strokeColor = '#F00'
    ..fillColor = '#F00'
    ..fillOpacity = 1
    ;

  final symbolTwo = new gmaps.Symbol()
    ..path = 'M -2,-2 2,2 M 2,-2 -2,2'
    ..strokeColor = '#292'
    ..strokeWeight = 4
    ;

  final symbolThree = new gmaps.Symbol()
    ..path = 'M -1,0 A 1,1 0 0 0 -3,0 1,1 0 0 0 -1,0M 1,0 A 1,1 0 0 0 3,0 1,1 0 0 0 1,0M -3,3 Q 0,5 3,3'
    ..strokeColor = '#00F'
    ..rotation = 0
    ;

  final line = new gmaps.Polyline(new gmaps.PolylineOptions()
    ..path = lineCoordinates
    ..icons = [
      new gmaps.IconSequence()
        ..icon = symbolOne
        ..offset = '0%',
      new gmaps.IconSequence()
        ..icon = symbolTwo
        ..offset = '50%',
      new gmaps.IconSequence()
        ..icon = symbolThree
        ..offset = '100%',
    ]
    ..map = map
  );
}