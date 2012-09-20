#import('dart:html');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  final chicago = new gmaps.LatLng(41.948766, -87.691497);
  final map = new gmaps.GMap(query("#map_canvas"), new gmaps.MapOptions()
    ..center = chicago
    ..zoom = 12
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
  );

  final layer = new gmaps.FusionTablesLayer(new gmaps.FusionTablesLayerOptions()
    ..query = (new gmaps.FusionTablesQuery()
      ..select = 'address'
      ..from = '1d7qpn60tAvG4LEg4jvClZbc1ggp8fIGGvpMGzA'
      ..where = 'ridership > 5000'
    )
  );
  layer.setMap(map);
}
