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

@JsName('google.maps.ImageMapType')
abstract class ImageMapType extends MVCObject implements MapType {
  factory ImageMapType(ImageMapTypeOptions? opts) => $js();
  String? alt;
  num? maxZoom;
  num? minZoom;
  String? name;
  Projection? projection;
  num? radius;
  Size? tileSize;

  // synthetic getter for getOpacity
  num? get opacity => _getOpacity();
  @JsName('getOpacity')
  num? _getOpacity();

  Node? Function(Point? tileCoord, num? zoom, Document? ownerDocument)? getTile;
  void Function(Node? tileDiv)? releaseTile;

  // synthetic setter for setOpacity
  set opacity(num? opacity) => _setOpacity(opacity);
  @JsName('setOpacity')
  void _setOpacity(num? opacity);

  Stream<void> get onTilesloaded {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'tilesloaded',
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
