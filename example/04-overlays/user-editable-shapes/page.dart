#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  js.scoped(() {
    final mapOptions = new gmaps.MapOptions()
      ..center = new gmaps.LatLng(44.5452, -78.5389)
      ..zoom = 9
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

    final bounds = new gmaps.LatLngBounds(
      new gmaps.LatLng(44.490, -78.649),
      new gmaps.LatLng(44.599, -78.443)
    );

    final rectangle = new gmaps.Rectangle(new gmaps.RectangleOptions()
      ..bounds = bounds
      ..editable = true
    );

    rectangle.setMap(map);
  });
}
