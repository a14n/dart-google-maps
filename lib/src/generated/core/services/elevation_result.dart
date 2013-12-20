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

class ElevationResult extends jsw.TypedJsObject {
  static ElevationResult $wrap(js.JsObject jsObject) => jsObject == null ? null : new ElevationResult.fromJsObject(jsObject);
  ElevationResult.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  ElevationResult();

  set elevation(num elevation) => $unsafe['elevation'] = elevation;
  num get elevation => $unsafe['elevation'];
  set location(LatLng location) => $unsafe['location'] = location == null ? null : location.$unsafe;
  LatLng get location => LatLng.$wrap($unsafe['location']);
  set resolution(num resolution) => $unsafe['resolution'] = resolution;
  num get resolution => $unsafe['resolution'];
}
