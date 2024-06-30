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

extension type DirectionsRequest._(JSObject _) implements JSObject {
  external DirectionsRequest({
    JSAny /*string|LatLng|Place|LatLngLiteral*/ destination,
    JSAny /*string|LatLng|Place|LatLngLiteral*/ origin,
    TravelMode travelMode,
    bool? avoidFerries,
    bool? avoidHighways,
    bool? avoidTolls,
    DrivingOptions? drivingOptions,
    String? language,
    bool? optimizeWaypoints,
    bool? provideRouteAlternatives,
    String? region,
    TransitOptions? transitOptions,
    UnitSystem? unitSystem,
    JSArray<DirectionsWaypoint>? waypoints,
  });
  external JSAny /*string|LatLng|Place|LatLngLiteral*/ destination;
  external JSAny /*string|LatLng|Place|LatLngLiteral*/ origin;
  external TravelMode travelMode;
  external bool? avoidFerries;
  external bool? avoidHighways;
  external bool? avoidTolls;
  external DrivingOptions? drivingOptions;
  external String? language;
  external bool? optimizeWaypoints;
  external bool? provideRouteAlternatives;
  external String? region;
  external TransitOptions? transitOptions;
  external UnitSystem? unitSystem;
  @JS('waypoints')
  external JSArray<DirectionsWaypoint>? _waypoints;
  List<DirectionsWaypoint>? get waypoints => _waypoints?.toDart;
  set waypoints(List<DirectionsWaypoint>? value) => _waypoints = value?.toJS;
}
