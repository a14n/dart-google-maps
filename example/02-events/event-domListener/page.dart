#import('dart:html');
#import('dart:math');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  js.scoped(() {
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 8
      ..center = new gmaps.LatLng(-34.397, 150.644)
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ;

    final mapDiv = query("#map_canvas");
    final map = new gmaps.GMap(mapDiv, mapOptions);

    // We add a DOM event here to show an alert if the DIV containing the
    // map is clicked. Note that we do this within the intialize function
    // since the document object isn't loaded until after the window.load
    // event.
    gmaps.Events.addDomListener(mapDiv, 'click', (e) { window.alert('DIV clicked'); });
  });
}
