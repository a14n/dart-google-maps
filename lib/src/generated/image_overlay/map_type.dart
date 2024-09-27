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
  @JS('getTile')
  external Element? _getTile(Point tileCoord, num zoom, Document ownerDocument);
  Element? Function(Point tileCoord, num zoom, Document ownerDocument)
      get getTile =>
          // ignore: unnecessary_lambdas
          (tileCoord, zoom, ownerDocument) =>
              _getTile(tileCoord, zoom, ownerDocument);
  set getTile(
          Element? Function(
            Point tileCoord,
            num zoom,
            Document ownerDocument,
          ) getTile) =>
      setProperty('getTile'.toJS, getTile.toJS);

  @JS('releaseTile')
  external void _releaseTile(Element? tile);
  void Function(Element? tile) get releaseTile =>
      // ignore: unnecessary_lambdas
      (tile) => _releaseTile(tile);
  set releaseTile(
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
