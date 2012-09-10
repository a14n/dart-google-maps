#import('dart:html');
#import('../../../gmaps.dart', prefix:'gmaps');

gmaps.GMap map;

void main() {
  final mapOptions = new gmaps.MapOptions()
    ..center = new gmaps.LatLng(45.518970, -122.672899)
    ..zoom = 18
    ..mapTypeId = gmaps.MapTypeId.SATELLITE
    ..heading = 90
    ..tilt = 45
    ;
  map = new gmaps.GMap(query("#map_canvas"), mapOptions);
  map.setTilt(45);
  
  query("#autoRotate").on.click.add((e)=>autoRotate());
}

void rotate90() {
  final headingMap = map.getHeading();
  final heading = headingMap !== null ? headingMap : 0;
  map.setHeading(heading + 90);
}

void autoRotate() {
  // Determine if we're showing aerial imagery
  if (map.getTilt() != 0) {
    window.setInterval(rotate90, 3000);
  }
}