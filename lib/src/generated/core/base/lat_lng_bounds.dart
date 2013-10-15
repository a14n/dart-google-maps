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

class LatLngBounds extends jsw.TypedJsObject {
  static LatLngBounds cast(js.JsObject jsObject) => jsObject == null ? null : new LatLngBounds.fromJsObject(jsObject);
  LatLngBounds.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  LatLngBounds([LatLng sw, LatLng ne])
      : super(maps['LatLngBounds'], [sw, ne]);

  bool contains(LatLng latLng) => $unsafe.callMethod('contains', [latLng]);
  bool equals(LatLngBounds other) => $unsafe.callMethod('equals', [other]);
  LatLngBounds extend(LatLng point) => LatLngBounds.cast($unsafe.callMethod('extend', [point]));
  LatLng get center => LatLng.cast($unsafe.callMethod('getCenter'));
  LatLng get northEast => LatLng.cast($unsafe.callMethod('getNorthEast'));
  LatLng get southWest => LatLng.cast($unsafe.callMethod('getSouthWest'));
  bool intersects(LatLngBounds other) => $unsafe.callMethod('intersects', [other]);
  bool isEmpty() => $unsafe.callMethod('isEmpty');
  LatLng toSpan() => LatLng.cast($unsafe.callMethod('toSpan'));
  String toString() => $unsafe.callMethod('toString');
  String toUrlValue([num precision]) => $unsafe.callMethod('toUrlValue', [precision]);
  bool union(LatLngBounds other) => $unsafe.callMethod('union', [other]);
}
