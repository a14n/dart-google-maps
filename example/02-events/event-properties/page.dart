#import('dart:html');
#import('dart:math');
#import('package:js/js.dart', prefix:'js');
#import('package:google_maps/jswrap.dart', prefix:'jsw');
#import('package:google_maps/gmaps.dart', prefix:'gmaps');

void main() {
  js.scoped(() {
    var myLatLng = new gmaps.LatLng(-25.363882, 131.044922);
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 4
      ..center = myLatLng
      ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ;

    final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

    final infowindow = new gmaps.InfoWindow(new gmaps.InfoWindowOptions()
      ..content = "Change the zoom level"
      ..position = myLatLng
    );
    infowindow.open(map);

    jsw.retainAll([map, myLatLng, infowindow]);
    map.on.zoomChanged.add(() {
      var zoomLevel = map.zoom;
      map.center = myLatLng;
      infowindow.content = "Zoom: $zoomLevel";
    });
  });
}