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

part of google_maps_geometry;

final Poly poly = new Poly();

class Poly extends jsw.TypedJsObject {
  static Poly $wrap(js.JsObject jsObject) => jsObject == null ? null : new Poly.fromJsObject(jsObject);
  Poly.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  Poly()
      : super.fromJsObject(maps['geometry']['poly']);

  bool containsLocation(LatLng point, Polygon polygon) => $unsafe.callMethod('containsLocation', [point == null ? null : point.$unsafe, polygon == null ? null : polygon.$unsafe]);
  bool isLocationOnEdge(LatLng point, dynamic poly, [num tolerance]) => $unsafe.callMethod('isLocationOnEdge', [point == null ? null : point.$unsafe, poly is Polygon ? poly.$unsafe : poly is Polyline ? poly.$unsafe : poly == null ? null : throw "bad type", tolerance]);
}
