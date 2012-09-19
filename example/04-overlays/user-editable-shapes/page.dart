#import('dart:html');
#import('../../../lib/gmaps.dart', prefix:'gmaps');

void main() {
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
}
