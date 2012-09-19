#import('dart:html');
#import('../../../lib/gmaps.dart', prefix:'gmaps');

void main() {
  final myLatlng = new gmaps.LatLng(42.3726399, -71.1096528);
  final mapOptions = new gmaps.MapOptions()
    ..zoom = 14
    ..center = myLatlng
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ;
  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  final bikeLayer = new gmaps.BicyclingLayer();
  bikeLayer.setMap(map);
}
