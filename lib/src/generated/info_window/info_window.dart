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

part of '../info_window.dart';

@JS('google.maps.InfoWindow')
extension type InfoWindow._(MVCObject _) implements MVCObject {
  external InfoWindow([
    InfoWindowOptions? opts,
  ]);
  external bool isOpen;
  external void close();
  external void focus();
  @JS('getContent')
  external JSAny? /*string|Element|Text|null|undefined*/ _getContent();
  JSAny? /*string|Element|Text|null|undefined*/ get content => _getContent();
  @JS('getHeaderContent')
  external JSAny? /*string|Element|Text|null|undefined*/ _getHeaderContent();
  JSAny? /*string|Element|Text|null|undefined*/ get headerContent =>
      _getHeaderContent();
  @JS('getHeaderDisabled')
  external bool? _getHeaderDisabled();
  bool? get headerDisabled => _getHeaderDisabled();
  @JS('getPosition')
  external LatLng? _getPosition();
  LatLng? get position => _getPosition();
  @JS('getZIndex')
  external num _getZIndex();
  num get zIndex => _getZIndex();
  external void open([
    JSAny? /*(InfoWindowOpenOptions|Map|StreetViewPanorama)?*/ options,
    JSAny? /*(MVCObject|AdvancedMarkerElement)?*/ anchor,
  ]);
  @JS('setContent')
  external void _setContent(JSAny? /*(string|Element|Text)?*/ content);
  void set content(JSAny? /*(string|Element|Text)?*/ content) =>
      _setContent(content);
  @JS('setHeaderContent')
  external void _setHeaderContent(
      JSAny? /*(string|Element|Text)?*/ headerContent);
  void set headerContent(JSAny? /*(string|Element|Text)?*/ headerContent) =>
      _setHeaderContent(headerContent);
  @JS('setHeaderDisabled')
  external void _setHeaderDisabled(bool? headerDisabled);
  void set headerDisabled(bool? headerDisabled) =>
      _setHeaderDisabled(headerDisabled);
  @JS('setOptions')
  external void _setOptions(InfoWindowOptions? options);
  void set options(InfoWindowOptions? options) => _setOptions(options);
  @JS('setPosition')
  external void _setPosition(LatLngOrLatLngLiteral? position);
  void set position(LatLngOrLatLngLiteral? position) => _setPosition(position);
  @JS('setZIndex')
  external void _setZIndex(num zIndex);
  void set zIndex(num zIndex) => _setZIndex(zIndex);
  Stream<void> get onClose {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'close',
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

  Stream<void> get onCloseclick {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'closeclick',
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

  Stream<void> get onContentChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'content_changed',
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

  Stream<void> get onDomready {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'domready',
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

  Stream<void> get onHeadercontentChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'headercontent_changed',
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

  Stream<void> get onHeaderdisabledChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'headerdisabled_changed',
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

  Stream<void> get onVisible {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'visible',
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

  Stream<void> get onZindexChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'zindex_changed',
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
