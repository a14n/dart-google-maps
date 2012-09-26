#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

gmaps.Polyline line;

void main() {
  js.scoped(() {
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

    line = jsw.retain(new gmaps.Polyline(new gmaps.PolylineOptions()
      ..path = lineCoordinates
      ..strokeOpacity = 0
      ..icons = [new gmaps.IconSequence()
        ..icon = lineSymbol
        ..offset = '0'
        ..repeat = '20px'
      ]
      ..map = map
    ));
  });
}