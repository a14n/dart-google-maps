// Copyright (c) 2015, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of '../google_maps_core.dart';

@JsName('google.maps.KmlLayer')
abstract class _KmlLayer extends MVCObject {
  factory _KmlLayer([
    KmlLayerOptions opts, // ignore: unused_element
  ]) =>
      $js;

  // synthetic getter for getDefaultViewport
  LatLngBounds get defaultViewport => _getDefaultViewport();
  @JsName('getDefaultViewport')
  LatLngBounds _getDefaultViewport();

  // synthetic getter for getMap
  GMap get map => _getMap();
  @JsName('getMap')
  GMap _getMap();

  // synthetic getter for getMetadata
  KmlLayerMetadata get metadata => _getMetadata();
  @JsName('getMetadata')
  KmlLayerMetadata _getMetadata();

  // synthetic getter for getStatus
  KmlLayerStatus get status => _getStatus();
  @JsName('getStatus')
  KmlLayerStatus _getStatus();

  // synthetic getter for getUrl
  String get url => _getUrl();
  @JsName('getUrl')
  String _getUrl();

  // synthetic getter for getZIndex
  num get zIndex => _getZIndex();
  @JsName('getZIndex')
  num _getZIndex();

  // synthetic setter for setMap
  set map(GMap map) => _setMap(map);
  @JsName('setMap')
  void _setMap(GMap map);

  // synthetic setter for setOptions
  set options(KmlLayerOptions options) => _setOptions(options);
  @JsName('setOptions')
  void _setOptions(KmlLayerOptions options);

  // synthetic setter for setUrl
  set url(String url) => _setUrl(url);
  @JsName('setUrl')
  void _setUrl(String url);

  // synthetic setter for setZIndex
  set zIndex(num zIndex) => _setZIndex(zIndex);
  @JsName('setZIndex')
  void _setZIndex(num zIndex);

  Stream<KmlMouseEvent> get onClick {
    StreamController<KmlMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'click',
          allowInterop((KmlMouseEvent kmlClickEvent) => sc.add(kmlClickEvent)),
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
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'defaultviewport_changed',
          allowInterop(() => sc.add(null)),
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
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'status_changed',
          allowInterop(() => sc.add(null)),
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
