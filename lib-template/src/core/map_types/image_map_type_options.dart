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

@wrapper abstract class ImageMapTypeOptions extends jsw.TypedJsObject {
  ImageMapTypeOptions() : super();

  String alt;
  // REPORTED report wtf arg : http://code.google.com/p/gmaps-api-issues/issues/detail?id=4573
  set getTileUrl(GetTileUrl callback) => $unsafe['getTileUrl'] = (js.JsObject point, num zoomLevel, [dynamic wtf]) => callback(Point.cast(point), zoomLevel);
  GetTileUrl get getTileUrl => (Point point, num zoomLevel) => $unsafe.callMethod('getTileUrl', [point, zoomLevel]);
  num maxZoom;
  num minZoom;
  String name;
  num opacity;
  Size tileSize;
}
