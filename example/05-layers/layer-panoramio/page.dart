import 'dart:html';
import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_panoramio.dart';

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 16
    ..center = new LatLng(47.651743, -122.349243)
    ..mapTypeId = MapTypeId.ROADMAP
    ;
  final map = new GMap(query("#map_canvas"), mapOptions);

  final panoramioLayer = new PanoramioLayer();
  panoramioLayer.map = map;

  final photoPanel = query('#photo-panel');
  map.controls.getNodes(ControlPosition.RIGHT_TOP).push(photoPanel);

  panoramioLayer.onClick.listen((e) {
    final li = new LIElement();
    final link = new AnchorElement();
    link.innerHtml = '${e.featureDetails.title}: ${e.featureDetails.author}';
    link.href = e.featureDetails.url;
    li.children.add(link);
    photoPanel.children.add(li);
    photoPanel.style.display = 'block';
  });
}
