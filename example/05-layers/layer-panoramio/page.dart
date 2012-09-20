#import('dart:html');
#import('package:dart_google_maps/gmaps.dart', prefix:'gmaps');
#import('package:dart_google_maps/gmaps-panoramio.dart', prefix:'gmaps_panoramio');

void main() {
  final mapOptions = new gmaps.MapOptions()
    ..zoom = 16
    ..center = new gmaps.LatLng(47.651743, -122.349243)
    ..mapTypeId = gmaps.MapTypeId.ROADMAP
    ;
  final map = new gmaps.GMap(query("#map_canvas"), mapOptions);

  final panoramioLayer = new gmaps_panoramio.PanoramioLayer();
  panoramioLayer.setMap(map);

  final photoPanel = query('#photo-panel');
  map.controls.getNodes(gmaps.ControlPosition.RIGHT_TOP).push(photoPanel);

  gmaps.Events.addListener(panoramioLayer, 'click', (e) {
    final photo = new gmaps_panoramio.PanoramioMouseEvent.wrap(e);
    final li = new LIElement();
    final link = new AnchorElement();
    link.innerHTML = '${photo.featureDetails.title}: ${photo.featureDetails.author}';
    link.href = photo.featureDetails.url;
    li.elements.add(link);
    photoPanel.elements.add(li);
    photoPanel.style.display = 'block';
  });
}
