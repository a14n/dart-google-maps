#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  js.scoped(() {
    final australia = new gmaps.LatLng(-25, 133);
    final map = new gmaps.GMap(query("#map_canvas"), new gmaps.MapOptions()
      ..center = australia
      ..zoom = 4
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
    );

    final layer = new gmaps.FusionTablesLayer(new gmaps.FusionTablesLayerOptions()
      ..query = (new gmaps.FusionTablesQuery()
        ..select = 'geometry'
        ..from = '1ertEwm-1bMBhpEwHhtNYT47HQ9k2ki_6sRa-UQ'
      )
      ..styles = [
        new gmaps.FusionTablesStyle()
          ..polygonOptions = (new gmaps.FusionTablesPolygonOptions()
            ..fillColor = '#00FF00'
            ..fillOpacity = 0.3
          )
        , new gmaps.FusionTablesStyle()
          ..where = 'birds > 300'
          ..polygonOptions = (new gmaps.FusionTablesPolygonOptions()
            ..fillColor = '#0000FF'
          )
        , new gmaps.FusionTablesStyle()
          ..where = 'population > 5'
          ..polygonOptions = (new gmaps.FusionTablesPolygonOptions()
            ..fillOpacity = 1.0
        )
      ]
    );
    layer.map = map;
  });
}
