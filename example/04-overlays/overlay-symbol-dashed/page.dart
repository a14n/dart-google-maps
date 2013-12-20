import 'dart:html';
import 'package:google_maps/google_maps.dart';

Polyline line;

void main() {
  final myLatLng = new LatLng(20.291, 153.027);
  final mapOptions = new MapOptions()
    ..zoom = 6
    ..center = myLatLng
    ..mapTypeId = MapTypeId.TERRAIN
    ;
  final map = new GMap(querySelector("#map_canvas"), mapOptions);

  final lineCoordinates = [
    new LatLng(22.291, 153.027),
    new LatLng(18.291, 153.027)
  ];
  final lineSymbol = new GSymbol()
    ..path = 'M 0,-1 0,1'
    ..strokeOpacity = 1
    ..scale = 4
    ;

  line = new Polyline(new PolylineOptions()
    ..path = lineCoordinates
    ..strokeOpacity = 0
    ..icons = [new IconSequence()
      ..icon = lineSymbol
      ..offset = '0'
      ..repeat = '20px'
    ]
    ..map = map
  );
}