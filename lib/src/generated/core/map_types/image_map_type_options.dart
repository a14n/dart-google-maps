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

typedef String GetTileUrl(Point point, num zoomLevel);

class ImageMapTypeOptions extends jsw.TypedJsObject {
  static ImageMapTypeOptions $wrap(js.JsObject jsObject) => jsObject == null ? null : new ImageMapTypeOptions.fromJsObject(jsObject);
  ImageMapTypeOptions.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  ImageMapTypeOptions();

  set alt(String alt) => $unsafe['alt'] = alt;
  String get alt => $unsafe['alt'];
  set getTileUrl(GetTileUrl callback) => $unsafe['getTileUrl'] = (js.JsObject point, num zoomLevel, [dynamic wtf]) => callback(Point.$wrap(point), zoomLevel);
  GetTileUrl get getTileUrl => (Point point, num zoomLevel) => $unsafe.callMethod('getTileUrl', [jsw.Serializable.$unwrap(point), zoomLevel]);
  set maxZoom(num maxZoom) => $unsafe['maxZoom'] = maxZoom;
  num get maxZoom => $unsafe['maxZoom'];
  set minZoom(num minZoom) => $unsafe['minZoom'] = minZoom;
  num get minZoom => $unsafe['minZoom'];
  set name(String name) => $unsafe['name'] = name;
  String get name => $unsafe['name'];
  set opacity(num opacity) => $unsafe['opacity'] = opacity;
  num get opacity => $unsafe['opacity'];
  set tileSize(Size tileSize) => $unsafe['tileSize'] = tileSize == null ? null : tileSize.$unsafe;
  Size get tileSize => Size.$wrap($unsafe['tileSize']);
}
