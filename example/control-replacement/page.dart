import 'dart:js_interop';

import 'package:google_maps/google_maps.dart' hide event;
import 'package:web/web.dart';

void main() {
  final map = Map(
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

void initZoomControl(Map map) {
  document.querySelector('.zoom-control-in')!.onClick.listen((event) {
    map.zoom = map.zoom + 1;
  });

  document.querySelector('.zoom-control-out')!.onClick.listen((event) {
    map.zoom = map.zoom - 1;
  });
  map
      .getControlsAt(ControlPosition.RIGHT_BOTTOM)
      .push(document.querySelector('.zoom-control') as HTMLElement);
}

void initMapTypeControl(Map map) {
  final mapTypeControlDiv =
      document.querySelector('.maptype-control') as HTMLElement;

  document.querySelector('.maptype-control-map')!.onClick.listen((event) {
    mapTypeControlDiv.classList.add('maptype-control-is-map');
    mapTypeControlDiv.classList.remove('maptype-control-is-satellite');
    map.mapTypeId = 'roadmap'.toJS;
  });

  document.querySelector('.maptype-control-satellite')!.onClick.listen((event) {
    mapTypeControlDiv.classList.remove('maptype-control-is-map');
    mapTypeControlDiv.classList.add('maptype-control-is-satellite');
    map.mapTypeId = 'hybrid'.toJS;
  });
  map.getControlsAt(ControlPosition.LEFT_TOP).push(mapTypeControlDiv);
}

void initFullscreenControl(Map map) {
  final elementToSendFullscreen = map.div.firstChild! as Element;
  final fullscreenControl =
      document.querySelector('.fullscreen-control') as HTMLElement;
  map.getControlsAt(ControlPosition.RIGHT_TOP).push(fullscreenControl);

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

bool isFullscreen(Element element) =>
    _FullscreenDocument(document).fullscreenElement == element;

void requestFullscreen(Element element) {
  _FullscreenElement(element).requestFullscreen.callAsFunction();
}

void exitFullscreen() {
  _FullscreenDocument(document).exitFullscreen.callAsFunction();
}

/// This extension type merely exists because `package:web` no longer provides the Fullscreen API,
/// as Safari only supports it under a prefix.
///
/// This extension type can be removed when that restriction is lifted.
extension type _FullscreenDocument(Document _) {
  external JSFunction get exitFullscreen;

  external Element? get fullscreenElement;
}

/// This extension type merely exists because `package:web` no longer provides the Fullscreen API,
/// as Safari only supports it under a prefix.
///
/// This extension type can be removed when that restriction is lifted.
extension type _FullscreenElement(Element _) {
  external JSFunction get requestFullscreen;
}
