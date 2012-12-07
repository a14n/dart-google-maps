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

class ImageMapTypeOptions extends jsw.IsJsProxy {
  set alt(String alt) => $.alt = alt;
  // REPORTED report wtf arg : http://code.google.com/p/gmaps-api-issues/issues/detail?id=4573
  set getTileUrl(String callback(Point point, num zoomLevel)) => $.getTileUrl = new jsw.Callback.many((Option<js.Proxy> point, Option<num> zoomLevel, [Option<Object> wtf]) => callback(point.map(Point.INSTANCIATOR).value, zoomLevel.value));
  set maxZoom(num maxZoom) => $.maxZoom = maxZoom;
  set minZoom(num minZoom) => $.minZoom = minZoom;
  set name(String name) => $.name = name;
  set opacity(num opacity) => $.opacity = opacity;
  set tileSize(Size tileSize) => $.tileSize = tileSize;
}