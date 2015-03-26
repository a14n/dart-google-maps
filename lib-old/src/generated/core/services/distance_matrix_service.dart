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

class DistanceMatrixService extends jsw.TypedJsObject {
  static DistanceMatrixService $wrap(js.JsObject jsObject) => jsObject == null ? null : new DistanceMatrixService.fromJsObject(jsObject);
  DistanceMatrixService.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  DistanceMatrixService()
      : super(maps['DistanceMatrixService'], []);

  void getDistanceMatrix(DistanceMatrixRequest request, void callback(DistanceMatrixResponse response, DistanceMatrixStatus status)) {
    $unsafe.callMethod('getDistanceMatrix', [jsw.Serializable.$unwrap(request), (js.JsObject response, String status) => callback(DistanceMatrixResponse.$wrap(response), DistanceMatrixStatus.$wrap(status))]);
  }
}
