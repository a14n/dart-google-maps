#import('dart:html');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  final chicago = new gmaps.LatLng(41.875696,-87.624207);
  final mapOptions = new gmaps.MapOptions()
    ..zoom = 11
    ..center = chicago
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ;
  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  final ctaLayer = new gmaps.KmlLayer('http://gmaps-samples.googlecode.com/svn/trunk/ggeoxml/cta.kml');
  ctaLayer.setMap(map);
}
