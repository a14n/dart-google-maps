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

class DirectionsRoute extends jsw.TypedJsObject {
  static DirectionsRoute $wrap(js.JsObject jsObject) => jsObject == null ? null : new DirectionsRoute.fromJsObject(jsObject);
  DirectionsRoute.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  DirectionsRoute();

  set bounds(LatLngBounds bounds) => $unsafe['bounds'] = bounds == null ? null : bounds.$unsafe;
  LatLngBounds get bounds => LatLngBounds.$wrap($unsafe['bounds']);
  set copyrights(String copyrights) => $unsafe['copyrights'] = copyrights;
  String get copyrights => $unsafe['copyrights'];
  set legs(List<DirectionsLeg> legs) => $unsafe['legs'] = jsw.jsify(legs);
  List<DirectionsLeg> get legs => jsw.TypedJsArray.$wrapSerializables($unsafe['legs'], DirectionsLeg.$wrap);
  set overviewPath(List<LatLng> overviewPath) => $unsafe['overview_path'] = jsw.jsify(overviewPath);
  List<LatLng> get overviewPath => jsw.TypedJsArray.$wrapSerializables($unsafe['overview_path'], LatLng.$wrap);
  set warnings(List<String> warnings) => $unsafe['warnings'] = jsw.jsify(warnings);
  List<String> get warnings => jsw.TypedJsArray.$wrap($unsafe['warnings']);
  set waypointOrder(List<num> waypointOrder) => $unsafe['waypoint_order'] = jsw.jsify(waypointOrder);
  List<num> get waypointOrder => jsw.TypedJsArray.$wrap($unsafe['waypoint_order']);
}
