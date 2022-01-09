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

@JsName('google.maps.InfoWindow')
abstract class InfoWindow extends MVCObject {
  factory InfoWindow([
    InfoWindowOptions? opts, // ignore: unused_element
  ]) =>
      $js();
  void close();

  // synthetic getter for getContent
  Object? /*String?|Element?|Text?*/ get content => _getContent();
  @JsName('getContent')
  Object? /*String?|Element?|Text?*/ _getContent();

  // synthetic getter for getPosition
  LatLng? get position => _getPosition();
  @JsName('getPosition')
  LatLng? _getPosition();

  // synthetic getter for getZIndex
  num? get zIndex => _getZIndex();
  @JsName('getZIndex')
  num? _getZIndex();

  void open([
    Object? /*InfoWindowOpenOptions?|GMap?|StreetViewPanorama?*/ options,
    MVCObject? anchor,
  ]);

  // synthetic setter for setContent
  set content(Object? /*String?|Element?|Text?*/ content) =>
      _setContent(content);
  @JsName('setContent')
  void _setContent(Object? /*String?|Element?|Text?*/ content);

  // synthetic setter for setOptions
  set options(InfoWindowOptions? options) => _setOptions(options);
  @JsName('setOptions')
  void _setOptions(InfoWindowOptions? options);

  // synthetic setter for setPosition
  set position(LatLng? position) => _setPosition(position);
  @JsName('setPosition')
  void _setPosition(LatLng? position);

  // synthetic setter for setZIndex
  set zIndex(num? zIndex) => _setZIndex(zIndex);
  @JsName('setZIndex')
  void _setZIndex(num? zIndex);

  Stream<void> get onCloseclick {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'closeclick',
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

  Stream<void> get onContentChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'content_changed',
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

  Stream<void> get onDomready {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'domready',
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
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
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

  Stream<void> get onZindexChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'zindex_changed',
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
