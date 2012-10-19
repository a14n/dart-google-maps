import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/jswrap.dart' as jsw;
import 'package:google_maps/gmaps.dart' as gmaps;

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
