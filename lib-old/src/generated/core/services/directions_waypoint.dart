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
  static DirectionsWaypoint $wrap(js.JsObject jsObject) => jsObject == null ? null : new DirectionsWaypoint.fromJsObject(jsObject);
  DirectionsWaypoint.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  DirectionsWaypoint();

  set location(dynamic location) => $unsafe['location'] = location is LatLng ? location.$unsafe : location is String ? location : location == null ? null : throw "bad type";
  dynamic get location => ((v2) => LatLng.isInstance(v2) ? LatLng.$wrap(v2) : ((v1) => v1 is String ? v1 : ((v0) => v0)(v1))(v2))($unsafe['location']);
  set stopover(bool stopover) => $unsafe['stopover'] = stopover;
  bool get stopover => $unsafe['stopover'];
}
