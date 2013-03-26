// Copyright (c) 2012, Alexandre Ardhuin
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

part of google_maps;

class MapType extends jsw.TypedProxy {
  static MapType cast(js.Proxy proxy) => proxy == null ? null : new MapType.fromProxy(proxy);

  MapType([js.FunctionProxy function, List args]) : super(function, args);
  MapType.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  html.Node getTile(Point tileCoord, num zoom, html.Document ownerDocument) => $unsafe.getTile(tileCoord, zoom, ownerDocument);
  html.Node releaseTile(html.Node tile) => $unsafe.releaseTile(tile);

  String get alt => $unsafe.alt;
  num get maxZoom => $unsafe.maxZoom;
  num get minZoom => $unsafe.minZoom;
  String get name => $unsafe.name;
  Projection get projection => Projection.cast($unsafe.projection);
  num get radius => $unsafe.radius;
  Size get tileSize => Size.cast($unsafe.tileSize);
  set alt(String alt) => $unsafe.alt = alt;
  set maxZoom(num maxZoom) => $unsafe.maxZoom = maxZoom;
  set minZoom(num minZoom) => $unsafe.minZoom = minZoom;
  set name(String name) => $unsafe.name = name;
  set projection(Projection projection) => $unsafe.projection = projection;
  set radius(num radius) => $unsafe.radius = radius;
  set tileSize(Size tileSize) => $unsafe.tileSize = tileSize;
}