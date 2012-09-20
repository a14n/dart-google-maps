#import('dart:html');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');

gmaps.GMap map;
gmaps.InfoWindow infoWindow;
gmaps.Polygon bermudaTriangle;

void main() {
  final myLatLng = new gmaps.LatLng(24.886436490787712, -70.2685546875);
  final mapOptions = new gmaps.MapOptions()
    ..zoom = 5
    ..center = myLatLng
    ..mapTypeId = gmaps.MapTypeId.TERRAIN
    ;
  map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  final triangleCoords = [
                        new gmaps.LatLng(25.774252, -80.190262),
                        new gmaps.LatLng(18.466465, -66.118292),
                        new gmaps.LatLng(32.321384, -64.75737)
                        ];

  bermudaTriangle = new gmaps.Polygon(new gmaps.PolygonOptions()
    ..paths = triangleCoords
    ..strokeColor = '#FF0000'
    ..strokeOpacity = 0.8
    ..strokeWeight = 3
    ..fillColor = '#FF0000'
    ..fillOpacity = 0.35
  );

  bermudaTriangle.setMap(map);

  // Add a listener for the click event
  gmaps.Events.addListener(bermudaTriangle, 'click', showArrays);

  infoWindow = new gmaps.InfoWindow();
}

void showArrays(e) {
  final me = new gmaps.MouseEvent.wrap(e);

  // Since this Polygon only has one path, we can call getPath()
  // to return the MVCArray of LatLngs
  final vertices = bermudaTriangle.getPath();

  final contentString = new StringBuffer()
    ..add('<b>Bermuda Triangle Polygon</b><br>')
    ..add('Clicked Location: <br>${me.latLng.lat()},${me.latLng.lng()}<br>')
    ;

  // Iterate over the vertices.
  for (var i =0; i < vertices.getLength(); i++) {
    var xy = vertices.getAt(i);
    contentString.add('<br>Coordinate: ${i}<br>${xy.lat()},${xy.lng()}');
  }

  // Replace our Info Window's content and position
  infoWindow
    ..setContent(contentString.toString())
    ..setPosition(me.latLng)
    ..open(map)
    ;
}