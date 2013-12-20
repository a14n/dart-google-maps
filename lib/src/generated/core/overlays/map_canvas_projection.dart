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

class MapCanvasProjection extends MVCObject {
  static MapCanvasProjection $wrap(js.JsObject jsObject) => jsObject == null ? null : new MapCanvasProjection.fromJsObject(jsObject);
  MapCanvasProjection.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  LatLng fromContainerPixelToLatLng(Point pixel, [bool nowrap]) => LatLng.$wrap($unsafe.callMethod('fromContainerPixelToLatLng', [pixel == null ? null : pixel.$unsafe, nowrap]));
  LatLng fromDivPixelToLatLng(Point pixel, [bool nowrap]) => LatLng.$wrap($unsafe.callMethod('fromDivPixelToLatLng', [pixel == null ? null : pixel.$unsafe, nowrap]));
  Point fromLatLngToContainerPixel(LatLng latLng) => Point.$wrap($unsafe.callMethod('fromLatLngToContainerPixel', [latLng == null ? null : latLng.$unsafe]));
  Point fromLatLngToDivPixel(LatLng latLng) => Point.$wrap($unsafe.callMethod('fromLatLngToDivPixel', [latLng == null ? null : latLng.$unsafe]));
  num get worldWidth => $unsafe.callMethod('getWorldWidth');
}
