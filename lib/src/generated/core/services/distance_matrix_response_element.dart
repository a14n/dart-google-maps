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

class DistanceMatrixResponseElement extends jsw.TypedJsObject {
  static DistanceMatrixResponseElement cast(js.JsObject jsObject) => jsObject == null ? null : new DistanceMatrixResponseElement.fromJsObject(jsObject);
  DistanceMatrixResponseElement.fromJsObject(js.JsObject jsObject) : super.fromJsObject(jsObject);
  DistanceMatrixResponseElement() : super();

  set distance(Distance distance) => $unsafe['distance'] = distance;
  Distance get distance => Distance.cast($unsafe['distance']);
  set duration(GDuration duration) => $unsafe['duration'] = duration;
  GDuration get duration => GDuration.cast($unsafe['duration']);
  DistanceMatrixElementStatus get status => DistanceMatrixElementStatus.find($unsafe['status']);
  set status(DistanceMatrixElementStatus status) => $unsafe['status'] = status;
}
