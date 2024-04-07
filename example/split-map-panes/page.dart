import 'dart:js_interop';

import 'package:google_maps/google_maps.dart' hide event;
import 'package:web/web.dart';

void main() {
  final mapOptions = MapOptions()
    ..center = LatLng(44.5250489, -110.83819)
    ..zoom = 18
    ..scaleControl = false
    ..streetViewControl = false;
  // instantiate the map on the left with control positioning
  final mapLeft = Map(
    document.getElementById('map-left') as HTMLElement,
    MapOptions()
      ..center = mapOptions.center
      ..zoom = mapOptions.zoom
      ..scaleControl = mapOptions.scaleControl
      ..streetViewControl = mapOptions.streetViewControl
      ..mapTypeId = MapTypeId.SATELLITE
      ..tilt = 0
      ..fullscreenControlOptions =
          (FullscreenControlOptions()..position = ControlPosition.LEFT_BOTTOM)
      ..mapTypeControlOptions =
          (MapTypeControlOptions()..position = ControlPosition.LEFT_TOP)
      ..zoomControlOptions =
          (ZoomControlOptions()..position = ControlPosition.LEFT_BOTTOM),
  );
  // instantiate the map on the right with control positioning
  final mapRight = Map(
    document.getElementById('map-right') as HTMLElement,
    MapOptions()
      ..center = mapOptions.center
      ..zoom = mapOptions.zoom
      ..scaleControl = mapOptions.scaleControl
      ..streetViewControl = mapOptions.streetViewControl
      ..fullscreenControlOptions =
          (FullscreenControlOptions()..position = ControlPosition.RIGHT_BOTTOM)
      ..mapTypeControlOptions =
          (MapTypeControlOptions()..position = ControlPosition.RIGHT_TOP)
      ..zoomControlOptions =
          (ZoomControlOptions()..position = ControlPosition.RIGHT_BOTTOM),
  );

  // helper function to keep maps in sync
  void syncMaps(List<Map> maps) {
    LatLng? center;
    num? zoom;

    void update(Map changedMap) {
      for (var map in maps) {
        if (map == changedMap) {
          continue;
        }
        map
          ..center = center!
          ..zoom = zoom!;
      }
    }

    for (var map in maps) {
      map.onBoundsChanged.listen((event) {
        final changedCenter = map.center;
        final changedZoom = map.zoom;

        if (changedCenter != center || changedZoom != zoom) {
          center = changedCenter;
          zoom = changedZoom;
          update(map);
        }
      });
    }
  }

  syncMaps([mapLeft, mapRight]);

  void handleContainerResize([_]) {
    final width =
        (document.getElementById('container') as HTMLElement).offsetWidth;
    (document.getElementById('map-left') as HTMLElement).style.width =
        '${width}px';
    (document.getElementById('map-right') as HTMLElement).style.width =
        '${width}px';
  }

  // trigger to set map container size since using absolute
  handleContainerResize();
  // add event listener
  const EventStreamProvider('resize')
      .forTarget(window)
      .listen(handleContainerResize);
  //@ts-ignore
  Split(['#left'.toJS, '#right'.toJS].toJS,
      SplitOptions(sizes: [50.toJS, 50.toJS].toJS));
}

@JS()
extension type Split._(JSObject _) implements JSObject {
  external Split(JSArray<JSString> ids, SplitOptions options);
}

extension type SplitOptions._(JSObject _) implements JSObject {
  external SplitOptions({JSArray<JSNumber> sizes});
}
