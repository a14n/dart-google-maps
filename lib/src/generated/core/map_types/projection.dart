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

class Projection extends jsw.TypedJsObject {
  static Projection cast(js.JsObject jsObject) => jsObject == null ? null : new Projection.fromJsObject(jsObject);
  Projection.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  Projection()
      : super();

  void set_fromLatLngToPoint(Point fromLatLngToPoint(LatLng latLng, [Point point])) {
    $unsafe['fromLatLngToPoint'] = (js.JsObject latLng, [js.JsObject point]) {
      if (point != null) {
        return fromLatLngToPoint(LatLng.cast(latLng), Point.cast(point));
      } else {
        return fromLatLngToPoint(LatLng.cast(latLng));
      }
    };
  }
  void set_fromPointToLatLng(LatLng fromPointToLatLng(Point pixel, [bool nowrap])) {
    $unsafe['fromPointToLatLng'] = (js.JsObject pixel, [bool nowrap]) {
      if (nowrap != null) {
        return fromPointToLatLng(Point.cast(pixel), nowrap);
      } else {
        return fromPointToLatLng(Point.cast(pixel));
      }
    };
  }

  Point fromLatLngToPoint(LatLng latLng, [Point point]) => Point.cast($unsafe.callMethod('fromLatLngToPoint', [latLng, point]));
  LatLng fromPointToLatLng(Point pixel, [bool nowrap]) => LatLng.cast($unsafe.callMethod('fromPointToLatLng', [pixel, nowrap]));
}
