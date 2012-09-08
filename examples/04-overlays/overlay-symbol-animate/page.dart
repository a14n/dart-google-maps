#import('dart:html');
#import('../../../jsni.dart', prefix:'js');
#import('../../../gmaps.dart', prefix:'gmaps');

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
    ..path = gmaps.SymbolPath.CIRCLE
    ..scale = 8
    ..strokeColor = '#393'
    ;

  line = new gmaps.Polyline(new gmaps.PolylineOptions()
    ..path = lineCoordinates
    ..icons = [new gmaps.IconSequence()
      ..icon = lineSymbol
      ..offset = '100%'
    ]
    ..map = map
  );
  
  animateCircle();
}

void animateCircle() {
  var count = 0;
  window.setInterval(() {
    count = (count + 1) % 200;

    final icons = line.get_('icons') as List<js.JsRef>;
    new gmaps.IconSequence.fromJsRef(icons[0]).offset = '${count / 2}%';
    line.set_('icons', icons);
  }, 20);
}
