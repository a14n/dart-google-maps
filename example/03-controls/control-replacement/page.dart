import 'package:google_maps/google_maps.dart' hide Event;
import 'package:web/helpers.dart';

void main() {
  final map = GMap(
    document.getElementById('map') as HTMLElement,
    MapOptions()
      ..center = LatLng(-34.397, 150.644)
      ..zoom = 8
      ..disableDefaultUI = true,
  );
  initZoomControl(map);
  initMapTypeControl(map);
  initFullscreenControl(map);
}

void initZoomControl(GMap map) {
  document.querySelector('.zoom-control-in')!.onClick.listen((event) {
    map.zoom = map.zoom! + 1;
  });

  document.querySelector('.zoom-control-out')!.onClick.listen((event) {
    map.zoom = map.zoom! - 1;
  });
  map.controls![ControlPosition.RIGHT_BOTTOM as int]!
      .push(document.querySelector('.zoom-control') as HTMLElement);
}

void initMapTypeControl(GMap map) {
  final mapTypeControlDiv =
      document.querySelector('.maptype-control') as HtmlElement;

  document.querySelector('.maptype-control-map')!.onClick.listen((event) {
    mapTypeControlDiv.classList.add('maptype-control-is-map');
    mapTypeControlDiv.classList.remove('maptype-control-is-satellite');
    map.mapTypeId = 'roadmap';
  });

  document.querySelector('.maptype-control-satellite')!.onClick.listen((event) {
    mapTypeControlDiv.classList.remove('maptype-control-is-map');
    mapTypeControlDiv.classList.add('maptype-control-is-satellite');
    map.mapTypeId = 'hybrid';
  });
  map.controls![ControlPosition.LEFT_TOP as int]!.push(mapTypeControlDiv);
}

void initFullscreenControl(GMap map) {
  final elementToSendFullscreen = map.div!.firstChild! as Element;
  final fullscreenControl =
      document.querySelector('.fullscreen-control') as HTMLElement;
  map.controls![ControlPosition.RIGHT_TOP as int]!.push(fullscreenControl);

  fullscreenControl.onClick.listen((event) {
    if (isFullscreen(elementToSendFullscreen)) {
      exitFullscreen();
    } else {
      requestFullscreen(elementToSendFullscreen);
    }
  });
  const EventStreamProvider('fullscreenchange').forTarget(document).listen((_) {
    if (isFullscreen(elementToSendFullscreen)) {
      fullscreenControl.classList.add('is-fullscreen');
    } else {
      fullscreenControl.classList.remove('is-fullscreen');
    }
  });
}

bool isFullscreen(Element element) => document.fullscreenElement == element;

void requestFullscreen(Element element) {
  element.requestFullscreen();
}

void exitFullscreen() {
  document.exitFullscreen();
}
