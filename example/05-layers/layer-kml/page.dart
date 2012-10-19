#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:google_maps/jswrap.dart', prefix:'jsw');
#import('package:google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  js.scoped(() {
    final chicago = new gmaps.LatLng(41.875696,-87.624207);
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 11
      ..center = chicago
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
      ;
    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

    final ctaLayer = new gmaps.KmlLayer('http://gmaps-samples.googlecode.com/svn/trunk/ggeoxml/cta.kml');
    ctaLayer.map = map;
  });
}
