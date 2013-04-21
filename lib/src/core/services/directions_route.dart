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

class DirectionsRoute extends jsw.TypedProxy {
  static DirectionsRoute cast(js.Proxy proxy) => proxy == null ? null : new DirectionsRoute.fromProxy(proxy);

  DirectionsRoute() : super();
  DirectionsRoute.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  LatLngBounds get bounds => LatLngBounds.cast($unsafe['bounds']);
  String get copyrights => $unsafe['copyrights'];
  List<DirectionsLeg> get legs => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe['legs'], DirectionsLeg.cast);
  List<LatLng> get overviewPath => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe['overview_path'], LatLng.cast);
  List<String> get warnings => jsw.JsArrayToListAdapter.cast($unsafe['warnings']);
  List<num> get waypointOrder => jsw.JsArrayToListAdapter.cast($unsafe['waypoint_order']);
  set bounds(LatLngBounds bounds) => $unsafe['bounds'] = bounds;
  set copyrights(String copyrights) => $unsafe['copyrights'] = copyrights;
  set legs(List<DirectionsLeg> legs) => $unsafe['legs'] = jsifyList(legs);
  set overviewPath(List<LatLng> overviewPath) => $unsafe['overview_path'] = jsifyList(overviewPath);
  set warnings(List<String> warnings) => $unsafe['warnings'] = jsifyList(warnings);
  set waypointOrder(List<num> waypointOrder) => $unsafe['waypoint_order'] = jsifyList(waypointOrder);
}