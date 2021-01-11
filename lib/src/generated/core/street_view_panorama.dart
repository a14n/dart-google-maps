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

@JsName('google.maps.StreetViewPanorama')
abstract class _StreetViewPanorama extends MVCObject {
  factory _StreetViewPanorama(
    Element container, [
    StreetViewPanoramaOptions opts, // ignore: unused_element
  ]) =>
      $js;
  List<MVCArray<Node>> controls;

  // synthetic getter for getLinks
  List<StreetViewLink> get links => _getLinks();
  @JsName('getLinks')
  List<StreetViewLink> _getLinks();

  // synthetic getter for getLocation
  StreetViewLocation get location => _getLocation();
  @JsName('getLocation')
  StreetViewLocation _getLocation();

  // synthetic getter for getMotionTracking
  bool get motionTracking => _getMotionTracking();
  @JsName('getMotionTracking')
  bool _getMotionTracking();

  // synthetic getter for getPano
  String get pano => _getPano();
  @JsName('getPano')
  String _getPano();

  // synthetic getter for getPhotographerPov
  StreetViewPov get photographerPov => _getPhotographerPov();
  @JsName('getPhotographerPov')
  StreetViewPov _getPhotographerPov();

  // synthetic getter for getPosition
  LatLng get position => _getPosition();
  @JsName('getPosition')
  LatLng _getPosition();

  // synthetic getter for getPov
  StreetViewPov get pov => _getPov();
  @JsName('getPov')
  StreetViewPov _getPov();

  // synthetic getter for getStatus
  StreetViewStatus get status => _getStatus();
  @JsName('getStatus')
  StreetViewStatus _getStatus();

  // synthetic getter for getVisible
  bool get visible => _getVisible();
  @JsName('getVisible')
  bool _getVisible();

  // synthetic getter for getZoom
  num get zoom => _getZoom();
  @JsName('getZoom')
  num _getZoom();

  void registerPanoProvider([
    StreetViewPanoramaData Function(String p1) provider,
    PanoProviderOptions opt_options,
  ]);

  // synthetic setter for setLinks
  set links(List<StreetViewLink> links) => _setLinks(links);
  @JsName('setLinks')
  void _setLinks(List<StreetViewLink> links);

  // synthetic setter for setMotionTracking
  set motionTracking(bool motionTracking) => _setMotionTracking(motionTracking);
  @JsName('setMotionTracking')
  void _setMotionTracking(bool motionTracking);

  // synthetic setter for setOptions
  set options(StreetViewPanoramaOptions options) => _setOptions(options);
  @JsName('setOptions')
  void _setOptions(StreetViewPanoramaOptions options);

  // synthetic setter for setPano
  set pano(String pano) => _setPano(pano);
  @JsName('setPano')
  void _setPano(String pano);

  // synthetic setter for setPosition
  set position(LatLng position) => _setPosition(position);
  @JsName('setPosition')
  void _setPosition(LatLng latLng);

  // synthetic setter for setPov
  set pov(StreetViewPov pov) => _setPov(pov);
  @JsName('setPov')
  void _setPov(StreetViewPov pov);

  // synthetic setter for setVisible
  set visible(bool visible) => _setVisible(visible);
  @JsName('setVisible')
  void _setVisible(bool flag);

  // synthetic setter for setZoom
  set zoom(num zoom) => _setZoom(zoom);
  @JsName('setZoom')
  void _setZoom(num zoom);

  Stream<Object> get onCloseclick {
    StreamController<Object> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'closeclick',
          (Object event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<Object>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onPanoChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'pano_changed',
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

  Stream<void> get onPositionChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'position_changed',
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

  Stream<void> get onPovChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'pov_changed',
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

  Stream<void> get onResize {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'resize',
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

  Stream<void> get onStatusChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'status_changed',
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

  Stream<void> get onVisibleChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'visible_changed',
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

  Stream<void> get onZoomChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'zoom_changed',
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
