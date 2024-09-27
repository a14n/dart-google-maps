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

part of '../street_view.dart';

@JS('google.maps.StreetViewPanorama')
extension type StreetViewPanorama._(MVCObject _) implements MVCObject {
  external StreetViewPanorama(
    HTMLElement container, [
    StreetViewPanoramaOptions? opts,
  ]);
  @JS('controls')
  external JSArray<MVCArray<HTMLElement>> _controls;
  List<MVCArray<HTMLElement>> get controls => _controls.toDart;
  set controls(List<MVCArray<HTMLElement>> value) => _controls = value.toJS;
  external void focus();
  @JS('getLinks')
  external JSArray<StreetViewLink> _getLinks();
  JSArray<StreetViewLink> get links => _getLinks();
  @JS('getLocation')
  external StreetViewLocation _getLocation();
  StreetViewLocation get location => _getLocation();
  @JS('getMotionTracking')
  external bool _getMotionTracking();
  bool get motionTracking => _getMotionTracking();
  @JS('getPano')
  external String _getPano();
  String get pano => _getPano();
  @JS('getPhotographerPov')
  external StreetViewPov _getPhotographerPov();
  StreetViewPov get photographerPov => _getPhotographerPov();
  @JS('getPosition')
  external LatLng? _getPosition();
  LatLng? get position => _getPosition();
  @JS('getPov')
  external StreetViewPov _getPov();
  StreetViewPov get pov => _getPov();
  @JS('getStatus')
  external StreetViewStatus _getStatus();
  StreetViewStatus get status => _getStatus();
  @JS('getVisible')
  external bool _getVisible();
  bool get visible => _getVisible();
  @JS('getZoom')
  external num _getZoom();
  num get zoom => _getZoom();
  external void registerPanoProvider(
    JSFunction /*StreetViewPanoramaData? Function(String)*/ provider, [
    PanoProviderOptions? opt_options,
  ]);
  @JS('setLinks')
  external void _setLinks(JSArray<StreetViewLink> links);
  void set links(JSArray<StreetViewLink> links) => _setLinks(links);
  @JS('setMotionTracking')
  external void _setMotionTracking(bool motionTracking);
  void set motionTracking(bool motionTracking) =>
      _setMotionTracking(motionTracking);
  @JS('setOptions')
  external void _setOptions(StreetViewPanoramaOptions? options);
  void set options(StreetViewPanoramaOptions? options) => _setOptions(options);
  @JS('setPano')
  external void _setPano(String pano);
  void set pano(String pano) => _setPano(pano);
  @JS('setPosition')
  external void _setPosition(LatLngOrLatLngLiteral? latLng);
  void set position(LatLngOrLatLngLiteral? latLng) => _setPosition(latLng);
  @JS('setPov')
  external void _setPov(StreetViewPov pov);
  void set pov(StreetViewPov pov) => _setPov(pov);
  @JS('setVisible')
  external void _setVisible(bool flag);
  void set visible(bool flag) => _setVisible(flag);
  @JS('setZoom')
  external void _setZoom(num zoom);
  void set zoom(num zoom) => _setZoom(zoom);
  Stream<Event> get onCloseclick {
    late StreamController<Event> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'closeclick',
          ((Event e) => sc.add(e)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<Event>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onPanoChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'pano_changed',
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

  Stream<void> get onPositionChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'position_changed',
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

  Stream<void> get onPovChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'pov_changed',
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

  Stream<void> get onResize {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'resize',
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

  Stream<void> get onVisibleChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'visible_changed',
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

  Stream<void> get onZoomChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'zoom_changed',
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
