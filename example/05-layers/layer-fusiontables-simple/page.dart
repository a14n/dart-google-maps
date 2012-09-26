#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  js.scoped(() {
    final chicago = new gmaps.LatLng(41.850033, -87.6500523);
    final map = new gmaps.GMap(query("#map_canvas"), new gmaps.MapOptions()
      ..center = chicago
      ..zoom = 11
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
    );

    final layer = new gmaps.FusionTablesLayer(new gmaps.FusionTablesLayerOptions()
      ..query = (new gmaps.FusionTablesQuery()
        ..select = '\'Geocodable address\''
        ..from = '1mZ53Z70NsChnBMm-qEYmSDOvLXgrreLTkQUvvg'
      )
    );
    layer.setMap(map);
  });
}
