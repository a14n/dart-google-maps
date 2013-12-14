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

class ElevationService extends jsw.TypedJsObject {
  static ElevationService $wrap(js.JsObject jsObject) => jsObject == null ? null : new ElevationService.fromJsObject(jsObject);
  ElevationService.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  ElevationService()
      : super(maps['ElevationService'], []);

  void getElevationAlongPath(PathElevationRequest request, void callback(List<ElevationResult> results, ElevationStatus status)) {
    $unsafe.callMethod('getElevationAlongPath', [jsw.Serializable.$unwrap(request), (js.JsObject results, String status) => callback(jsw.TypedJsArray.$wrapSerializables(results, ElevationResult.$wrap), ElevationStatus.$wrap(status))]);
  }
  void getElevationForLocations(LocationElevationRequest request, void callback(List<ElevationResult> results, ElevationStatus status)) {
    $unsafe.callMethod('getElevationForLocations', [jsw.Serializable.$unwrap(request), (js.JsObject results, String status) => callback(jsw.TypedJsArray.$wrapSerializables(results, ElevationResult.$wrap), ElevationStatus.$wrap(status))]);
  }
}
