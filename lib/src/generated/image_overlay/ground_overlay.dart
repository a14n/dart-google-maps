// Copyright 2015 Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of '../image_overlay.dart';

@JS('google.maps.GroundOverlay')
extension type GroundOverlay._(MVCObject _) implements MVCObject {
  external GroundOverlay(
    String url,
    LatLngBoundsOrLatLngBoundsLiteral bounds, [
    GroundOverlayOptions? opts,
  ]);
  @JS('getBounds')
  external LatLngBounds _getBounds();
  LatLngBounds get bounds => _getBounds();
  @JS('getMap')
  external Map? _getMap();
  Map? get map => _getMap();
  @JS('getOpacity')
  external num _getOpacity();
  num get opacity => _getOpacity();
  @JS('getUrl')
  external String _getUrl();
  String get url => _getUrl();
  @JS('setMap')
  external void _setMap(Map? map);
  set map(Map? map) => _setMap(map);
  @JS('setOpacity')
  external void _setOpacity(num opacity);
  set opacity(num opacity) => _setOpacity(opacity);
  Stream<MapMouseEvent> get onClick {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'click',
          ((MapMouseEvent e) => sc.add(e)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onDblclick {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'dblclick',
          ((MapMouseEvent e) => sc.add(e)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }
}
