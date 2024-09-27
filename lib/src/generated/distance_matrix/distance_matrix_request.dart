// Copyright 2015 Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of '../distance_matrix.dart';

extension type DistanceMatrixRequest._(JSObject _) implements JSObject {
  external DistanceMatrixRequest({
    JSArray<JSAny /*string|LatLng|LatLngLiteral|Place*/ > destinations,
    JSArray<JSAny /*string|LatLng|LatLngLiteral|Place*/ > origins,
    TravelMode travelMode,
    bool? avoidFerries,
    bool? avoidHighways,
    bool? avoidTolls,
    DrivingOptions? drivingOptions,
    String? language,
    String? region,
    TransitOptions? transitOptions,
    UnitSystem? unitSystem,
  });
  @JS('destinations')
  external JSArray<JSAny /*string|LatLng|LatLngLiteral|Place*/ > _destinations;
  List<JSAny /*string|LatLng|LatLngLiteral|Place*/ > get destinations =>
      _destinations.toDart;
  set destinations(List<JSAny /*string|LatLng|LatLngLiteral|Place*/ > value) =>
      _destinations = value.toJS;
  @JS('origins')
  external JSArray<JSAny /*string|LatLng|LatLngLiteral|Place*/ > _origins;
  List<JSAny /*string|LatLng|LatLngLiteral|Place*/ > get origins =>
      _origins.toDart;
  set origins(List<JSAny /*string|LatLng|LatLngLiteral|Place*/ > value) =>
      _origins = value.toJS;
  external TravelMode travelMode;
  external bool? avoidFerries;
  external bool? avoidHighways;
  external bool? avoidTolls;
  external DrivingOptions? drivingOptions;
  external String? language;
  external String? region;
  external TransitOptions? transitOptions;
  external UnitSystem? unitSystem;
}
