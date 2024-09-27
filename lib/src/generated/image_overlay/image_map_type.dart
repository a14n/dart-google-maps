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

@JS('google.maps.ImageMapType')
extension type ImageMapType._(MVCObject _) implements MVCObject, MapType {
  external ImageMapType(
    ImageMapTypeOptions opts,
  );
  external String? alt;
  external num maxZoom;
  external num minZoom;
  external String? name;
  external Projection projection;
  external num radius;
  external Size tileSize;
  @JS('getOpacity')
  external num _getOpacity();
  num get opacity => _getOpacity();
  @JS('setOpacity')
  external void _setOpacity(num opacity);
  set opacity(num opacity) => _setOpacity(opacity);
  Stream<void> get onTilesloaded {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'tilesloaded',
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
