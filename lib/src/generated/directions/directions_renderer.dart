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

part of '../directions.dart';

@JS('google.maps.DirectionsRenderer')
extension type DirectionsRenderer._(MVCObject _) implements MVCObject {
  external DirectionsRenderer([
    DirectionsRendererOptions? opts,
  ]);
  @JS('getDirections')
  external DirectionsResult _getDirections();
  DirectionsResult get directions => _getDirections();
  @JS('getMap')
  external Map? _getMap();
  Map? get map => _getMap();
  @JS('getPanel')
  external HTMLElement? _getPanel();
  HTMLElement? get panel => _getPanel();
  @JS('getRouteIndex')
  external num _getRouteIndex();
  num get routeIndex => _getRouteIndex();
  @JS('setDirections')
  external void _setDirections(DirectionsResult directions);
  void set directions(DirectionsResult directions) =>
      _setDirections(directions);
  @JS('setMap')
  external void _setMap(Map? map);
  void set map(Map? map) => _setMap(map);
  @JS('setOptions')
  external void _setOptions(DirectionsRendererOptions options);
  void set options(DirectionsRendererOptions options) => _setOptions(options);
  @JS('setPanel')
  external void _setPanel(HTMLElement? panel);
  void set panel(HTMLElement? panel) => _setPanel(panel);
  @JS('setRouteIndex')
  external void _setRouteIndex(num routeIndex);
  void set routeIndex(num routeIndex) => _setRouteIndex(routeIndex);
  Stream<void> get onDirectionsChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'directions_changed',
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
