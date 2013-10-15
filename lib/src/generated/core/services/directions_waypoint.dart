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

class DirectionsWaypoint extends jsw.TypedJsObject {
  static DirectionsWaypoint cast(js.JsObject jsObject) => jsObject == null ? null : new DirectionsWaypoint.fromJsObject(jsObject);
  DirectionsWaypoint.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  DirectionsWaypoint()
      : super();

  dynamic /*LatLng|string*/ get location {
    final result = $unsafe['location'];
    if (LatLng.isInstance(result)) {
      return LatLng.cast(result);
    }
    return result;
  }
  set location(dynamic location) => $unsafe['location'] = location;
  set stopover(bool stopover) => $unsafe['stopover'] = stopover;
  bool get stopover => $unsafe['stopover'];
}
