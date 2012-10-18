#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  js.scoped(() {
    final map = new gmaps.GMap(query("#map_canvas"), new gmaps.MapOptions()
      ..center = new gmaps.LatLng(10, -140)
      ..zoom = 3
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
    );

    final layer = new gmaps.FusionTablesLayer(new gmaps.FusionTablesLayerOptions()
      ..query = (new gmaps.FusionTablesQuery()
        ..select = 'location'
        ..from = '1xWyeuAhIFK_aED1ikkQEGmR8mINSCJO9Vq-BPQ'
      )
      ..heatmap = (new gmaps.FusionTablesHeatmap()
        ..enabled = true
      )
    );
    layer.map = map;
  });
}
