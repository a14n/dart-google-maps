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

@JsName('google.maps.DirectionsRenderer')
abstract class DirectionsRenderer extends MVCObject {
  factory DirectionsRenderer([
    DirectionsRendererOptions? opts, // ignore: unused_element
  ]) =>
      $js();

  // synthetic getter for getDirections
  DirectionsResult? get directions => _getDirections();
  @JsName('getDirections')
  DirectionsResult? _getDirections();

  // synthetic getter for getMap
  GMap? get map => _getMap();
  @JsName('getMap')
  GMap? _getMap();

  // synthetic getter for getPanel
  HtmlElement? get panel => _getPanel();
  @JsName('getPanel')
  HtmlElement? _getPanel();

  // synthetic getter for getRouteIndex
  num? get routeIndex => _getRouteIndex();
  @JsName('getRouteIndex')
  num? _getRouteIndex();

  // synthetic setter for setDirections
  set directions(DirectionsResult? directions) => _setDirections(directions);
  @JsName('setDirections')
  void _setDirections(DirectionsResult? directions);

  // synthetic setter for setMap
  set map(GMap? map) => _setMap(map);
  @JsName('setMap')
  void _setMap(GMap? map);

  // synthetic setter for setOptions
  set options(DirectionsRendererOptions? options) => _setOptions(options);
  @JsName('setOptions')
  void _setOptions(DirectionsRendererOptions? options);

  // synthetic setter for setPanel
  set panel(HtmlElement? panel) => _setPanel(panel);
  @JsName('setPanel')
  void _setPanel(HtmlElement? panel);

  // synthetic setter for setRouteIndex
  set routeIndex(num? routeIndex) => _setRouteIndex(routeIndex);
  @JsName('setRouteIndex')
  void _setRouteIndex(num? routeIndex);

  Stream<void> get onDirectionsChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'directions_changed',
          () => sc.add(null),
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
