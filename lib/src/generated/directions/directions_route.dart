// Copyright (c) 2015, Alexandre Ardhuin
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

part of '../directions.dart';

extension type DirectionsRoute._(JSObject _) implements JSObject {
  external DirectionsRoute({
    LatLngBounds bounds,
    String copyrights,
    JSArray<DirectionsLeg> legs,
    JSArray<LatLng> overview_path,
    String overview_polyline,
    String summary,
    JSArray<JSString> warnings,
    JSArray<JSNumber> waypoint_order,
    TransitFare? fare,
  });
  external LatLngBounds bounds;
  external String copyrights;
  @JS('legs')
  external JSArray<DirectionsLeg> _legs;
  List<DirectionsLeg> get legs => _legs.toDart;
  set legs(List<DirectionsLeg> value) => _legs = value.toJS;
  @JS('overview_path')
  external JSArray<LatLng> _overviewPath;
  List<LatLng> get overviewPath => _overviewPath.toDart;
  set overviewPath(List<LatLng> value) => _overviewPath = value.toJS;
  @JS('overview_polyline')
  external String _overviewPolyline;
  String get overviewPolyline => _overviewPolyline;
  set overviewPolyline(String value) => _overviewPolyline = value;
  external String summary;
  @JS('warnings')
  external JSArray<JSString> _warnings;
  List<String> get warnings => _warnings.dartify() as List<String>;
  set warnings(List<String> value) =>
      _warnings = value.jsify() as JSArray<JSString>;
  @JS('waypoint_order')
  external JSArray<JSNumber> _waypointOrder;
  List<num> get waypointOrder => _waypointOrder.dartify() as List<num>;
  set waypointOrder(List<num> value) =>
      _waypointOrder = value.jsify() as JSArray<JSNumber>;
  external TransitFare? fare;
}
