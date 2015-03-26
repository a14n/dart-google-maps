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

class MapType extends jsw.TypedJsObject {
  static MapType $wrap(js.JsObject jsObject) => jsObject == null ? null : new MapType.fromJsObject(jsObject);
  MapType([js.JsFunction constructor, List args])
      : super(constructor, args);
  MapType.fromJsObject(js.JsObject proxy)
      : super.fromJsObject(proxy);

  html.Node getTile(Point tileCoord, num zoom, js.JsObject ownerDocument) => $unsafe.callMethod('getTile', [tileCoord == null ? null : tileCoord.$unsafe, zoom, ownerDocument]);
  void releaseTile(html.Node tile) {
    $unsafe.callMethod('releaseTile', [tile]);
  }

  set alt(String alt) => $unsafe['alt'] = alt;
  String get alt => $unsafe['alt'];
  set maxZoom(num maxZoom) => $unsafe['maxZoom'] = maxZoom;
  num get maxZoom => $unsafe['maxZoom'];
  set minZoom(num minZoom) => $unsafe['minZoom'] = minZoom;
  num get minZoom => $unsafe['minZoom'];
  set name(String name) => $unsafe['name'] = name;
  String get name => $unsafe['name'];
  set projection(Projection projection) => $unsafe['projection'] = projection == null ? null : projection.$unsafe;
  Projection get projection => Projection.$wrap($unsafe['projection']);
  set radius(num radius) => $unsafe['radius'] = radius;
  num get radius => $unsafe['radius'];
  set tileSize(Size tileSize) => $unsafe['tileSize'] = tileSize == null ? null : tileSize.$unsafe;
  Size get tileSize => Size.$wrap($unsafe['tileSize']);
}
