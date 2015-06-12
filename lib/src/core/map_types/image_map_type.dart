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

part of google_maps.src;

@JsName('google.maps.ImageMapType')
abstract class _ImageMapType extends MVCObject implements MapType {
  external factory _ImageMapType(ImageMapTypeOptions opts);

  num get opacity => _getOpacity();
  num _getOpacity();
  Node getTile(Point tileCoord, num zoom, Document ownerDocument);
  void releaseTile(Node tile);
  void set opacity(num opacity) => _setOpacity(opacity);
  void _setOpacity(num opacity);

  String alt;
  num maxZoom;
  num minZoom;
  String name;
  Projection projection;
  num radius;
  Size tileSize;

  Stream get onTilesloaded => getStream(this, #onTilesloaded, "tilesloaded");
}
