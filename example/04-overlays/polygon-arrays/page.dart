#import('dart:html');
#import('package:js/js.dart', prefix:'js');
#import('package:dart_google_maps/jswrap.dart', prefix:'jsw');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

gmaps.GMap map;
gmaps.InfoWindow infoWindow;
gmaps.Polygon bermudaTriangle;

void main() {
  js.scoped(() {
    final myLatLng = new gmaps.LatLng(24.886436490787712, -70.2685546875);
    final mapOptions = new gmaps.MapOptions()
      ..zoom = 5
      ..center = myLatLng
      ..mapTypeId = gmaps.MapTypeId.TERRAIN
      ;
    map = jsw.retain(new gmaps.GMap(query("#map_canvas"), mapOptions));

    final triangleCoords = [
                          new gmaps.LatLng(25.774252, -80.190262),
                          new gmaps.LatLng(18.466465, -66.118292),
                          new gmaps.LatLng(32.321384, -64.75737)
                          ];

    bermudaTriangle = jsw.retain(new gmaps.Polygon(new gmaps.PolygonOptions()
      ..paths = triangleCoords
      ..strokeColor = '#FF0000'
      ..strokeOpacity = 0.8
      ..strokeWeight = 3
      ..fillColor = '#FF0000'
      ..fillOpacity = 0.35
    ));

    bermudaTriangle.map = map;

    // Add a listener for the click event
    bermudaTriangle.on.click.add(showArrays);

    infoWindow = jsw.retain(new gmaps.InfoWindow());
  });
}

void showArrays(gmaps.MouseEvent e) {
  // Since this Polygon only has one path, we can call getPath()
  // to return the MVCArray of LatLngs
  final vertices = bermudaTriangle.path;

  final contentString = new StringBuffer()
    ..add('<b>Bermuda Triangle Polygon</b><br>')
    ..add('Clicked Location: <br>${e.latLng.lat},${e.latLng.lng}<br>')
    ;

  // Iterate over the vertices.
  for (var i =0; i < vertices.length; i++) {
    var xy = vertices.getAt(i);
    contentString.add('<br>Coordinate: ${i}<br>${xy.lat},${xy.lng}');
  }

  // Replace our Info Window's content and position
  infoWindow
    ..content = contentString.toString()
    ..position = e.latLng
    ..open(map)
    ;
}