#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:google_maps/jswrap.dart', prefix:'jsw');
#import('package:google_maps/gmaps.dart', prefix:'gmaps');

void initialize() {
  js.scoped(() {
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 8
      ..center = new gmaps.LatLng(-34.397, 150.644)
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);
  });
}

void main() {
  js.scoped(() {
    js.context.initialize = new js.Callback.once(initialize);
  });

  final script = new ScriptElement()
    ..type = 'text/javascript'
    ..src = 'https://maps.googleapis.com/maps/api/js?sensor=false&callback=initialize'
    ;
  document.body.elements.add(script);
}