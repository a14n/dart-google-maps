import 'dart:html';
import 'package:google_maps/google_maps.dart';

void main() {
  var myLatlng = new LatLng(-25.363882,131.044922);
  final mapOptions = new MapOptions()
    ..zoom = 4
    ..center = myLatlng
    ..mapTypeId = MapTypeId.ROADMAP
    ;
  final map = new GMap(querySelector("#map_canvas"), mapOptions);

  final contentString = '<div id="content">'
      '<div id="siteNotice">'
      '</div>'
      '<h1 id="firstHeading" class="firstHeading">Uluru</h1>'
      '<div id="bodyContent">'
      '<p><b>Uluru</b>, also referred to as <b>Ayers Rock</b>, is a large '
      'sandstone rock formation in the southern part of the '
      'Northern Territory, central Australia. It lies 335&#160;km (208&#160;mi) '
      'south west of the nearest large town, Alice Springs; 450&#160;km '
      '(280&#160;mi) by road. Kata Tjuta and Uluru are the two major '
      'features of the Uluru - Kata Tjuta National Park. Uluru is '
      'sacred to the Pitjantjatjara and Yankunytjatjara, the '
      'Aboriginal people of the area. It has many springs, waterholes, '
      'rock caves and ancient paintings. Uluru is listed as a World '
      'Heritage Site.</p>'
      '<p>Attribution: Uluru, <a href="http://en.wikipedia.org/w/index.php?title=Uluru&oldid=297882194">'
      'http://en.wikipedia.org/w/index.php?title=Uluru</a> '
      '(last visited June 22, 2009).</p>'
      '</div>'
      '</div>';

  final infowindow = new InfoWindow(new InfoWindowOptions()
    ..content = contentString
  );

  final marker = new Marker(new MarkerOptions()
    ..position = myLatlng
    ..map = map
    ..title = 'Uluru (Ayers Rock)'
  );
  marker.onClick.listen((e) {
    infowindow.open(map, marker);
  });
}
