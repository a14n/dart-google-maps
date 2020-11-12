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

@JsName('google.maps.GroundOverlay')
abstract class _GroundOverlay extends MVCObject {
  factory _GroundOverlay(
    String url,
    LatLngBounds bounds, [
    GroundOverlayOptions opts, // ignore: unused_element
  ]) =>
      $js;

  // synthetic getter for getBounds
  LatLngBounds get bounds => _getBounds();
  @JsName('getBounds')
  LatLngBounds _getBounds();

  // synthetic getter for getMap
  GMap get map => _getMap();
  @JsName('getMap')
  GMap _getMap();

  // synthetic getter for getOpacity
  num get opacity => _getOpacity();
  @JsName('getOpacity')
  num _getOpacity();

  // synthetic getter for getUrl
  String get url => _getUrl();
  @JsName('getUrl')
  String _getUrl();

  // synthetic setter for setMap
  set map(GMap map) => _setMap(map);
  @JsName('setMap')
  void _setMap(GMap map);

  // synthetic setter for setOpacity
  set opacity(num opacity) => _setOpacity(opacity);
  @JsName('setOpacity')
  void _setOpacity(num opacity);

  Stream<MouseEvent> get onClick {
    StreamController<MouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'click',
          allowInterop((MouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MouseEvent> get onDblclick {
    StreamController<MouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dblclick',
          allowInterop((MouseEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }
}
