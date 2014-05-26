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

class LatLng extends jsw.TypedJsObject {
  static LatLng $wrap(js.JsObject jsObject) => jsObject == null ? null : new LatLng.fromJsObject(jsObject);
  LatLng.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  static bool isInstance(js.JsObject jsObject) => jsObject != null && jsObject.instanceof(maps['LatLng']);

  LatLng(num lat, num lng, [bool noWrap])
      : super(maps['LatLng'], [lat, lng, noWrap]);

  bool equals(LatLng other) => $unsafe.callMethod('equals', [other == null ? null : other.$unsafe]);
  num get lat => $unsafe.callMethod('lat');
  num get lng => $unsafe.callMethod('lng');
  String toString() => $unsafe.callMethod('toString');
  String toUrlValue([num precision]) => $unsafe.callMethod('toUrlValue', [precision]);
}
