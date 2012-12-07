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

class MapType extends jsw.IsJsProxy {
  MapType() : super();
  MapType.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);
  MapType.newInstance(objectName, [List args]) : super.newInstance(objectName, args);

  html.Node getTile(Point tileCoord, num zoom, html.Document ownerDocument) => $.getTile(tileCoord, zoom, ownerDocument).value;
  html.Node releaseTile(html.Node tile) => $.releaseTile(tile).value;

  String get alt => $.alt.value;
  set alt(String alt) => $.alt = alt;
  num get maxZoom => $.maxZoom.value;
  set maxZoom(num maxZoom) => $.maxZoom = maxZoom;
  num get minZoom => $.minZoom.value;
  set minZoom(num minZoom) => $.minZoom = minZoom;
  String get name => $.name.value;
  set name(String name) => $.name = name;
  Projection get projection => $.projection.map(Projection.INSTANCIATOR).value;
  set projection(Projection projection) => $.projection = projection;
  num get radius => $.radius.value;
  set radius(num radius) => $.radius = radius;
  Size get tileSize => $.tileSize.map(Size.INSTANCIATOR).value;
  set tileSize(Size tileSize) => $.tileSize = tileSize;
}