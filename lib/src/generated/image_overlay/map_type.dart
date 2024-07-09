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

part of '../image_overlay.dart';

extension type MapType._(JSObject _) implements JSObject {
  external MapType({
    num maxZoom,
    num minZoom,
    num radius,
    Size tileSize,
    String? alt,
    String? name,
    Projection? projection,
  });
  Element? Function(
    Point? tileCoord,
    num? zoom,
    Document? ownerDocument,
  ) get getTile {
    final function = (getProperty('getTile'.toJS) as JSObject)
        .callMethod('bind'.toJS, [this].toJS) as JSFunction;
    return (tileCoord, zoom, ownerDocument) => function.callAsFunction(
        null, tileCoord, zoom?.toJS, ownerDocument) as Element?;
  }

  void set getTile(
          Element? Function(
            Point tileCoord,
            num zoom,
            Document ownerDocument,
          ) getTile) =>
      setProperty('getTile'.toJS, getTile.toJS);
  void Function([Element? tile]) get releaseTile {
    final function = (getProperty('releaseTile'.toJS) as JSObject)
        .callMethod('bind'.toJS, [this].toJS) as JSFunction;
    return ([tile]) => function.callAsFunction(null, tile);
  }

  void set releaseTile(
          void Function(
            Element? tile,
          ) releaseTile) =>
      setProperty('releaseTile'.toJS, releaseTile.toJS);

  external num maxZoom;
  external num minZoom;
  external num radius;
  external Size tileSize;
  external String? alt;
  external String? name;
  external Projection? projection;
}
