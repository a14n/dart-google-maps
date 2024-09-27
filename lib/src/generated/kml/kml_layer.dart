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

part of '../kml.dart';

@JS('google.maps.KmlLayer')
extension type KmlLayer._(MVCObject _) implements MVCObject {
  external KmlLayer([
    KmlLayerOptions? opts,
  ]);
  @JS('getDefaultViewport')
  external LatLngBounds _getDefaultViewport();
  LatLngBounds get defaultViewport => _getDefaultViewport();
  @JS('getMap')
  external Map? _getMap();
  Map? get map => _getMap();
  @JS('getMetadata')
  external KmlLayerMetadata _getMetadata();
  KmlLayerMetadata get metadata => _getMetadata();
  @JS('getStatus')
  external KmlLayerStatus _getStatus();
  KmlLayerStatus get status => _getStatus();
  @JS('getUrl')
  external String _getUrl();
  String get url => _getUrl();
  @JS('getZIndex')
  external num _getZIndex();
  num get zIndex => _getZIndex();
  @JS('setMap')
  external void _setMap(Map? map);
  set map(Map? map) => _setMap(map);
  @JS('setOptions')
  external void _setOptions(KmlLayerOptions options);
  set options(KmlLayerOptions options) => _setOptions(options);
  @JS('setUrl')
  external void _setUrl(String url);
  set url(String url) => _setUrl(url);
  @JS('setZIndex')
  external void _setZIndex(num zIndex);
  set zIndex(num zIndex) => _setZIndex(zIndex);
  Stream<KmlMouseEvent> get onClick {
    late StreamController<KmlMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'click',
          ((KmlMouseEvent e) => sc.add(e)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<KmlMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onDefaultviewportChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'defaultviewport_changed',
          (() => sc.add(null)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onStatusChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'status_changed',
          (() => sc.add(null)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }
}
