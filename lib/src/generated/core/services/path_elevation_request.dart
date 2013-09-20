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

class PathElevationRequest extends jsw.TypedJsObject {
  static PathElevationRequest cast(js.JsObject jsObject) => jsObject == null ? null : new PathElevationRequest.fromJsObject(jsObject);
  PathElevationRequest.fromJsObject(js.JsObject jsObject) : super.fromJsObject(jsObject);
  PathElevationRequest() : super();

  set path(List<LatLng> path) => $unsafe['path'] = path == null ? null : path is js.Serializable<js.JsObject> ? path : js.jsify(path);
List<LatLng> get path => jsw.TypedJsArray.castListOfSerializables($unsafe['path'], LatLng.cast);
set samples(num samples) => $unsafe['samples'] = samples;
num get samples => $unsafe['samples'];
}