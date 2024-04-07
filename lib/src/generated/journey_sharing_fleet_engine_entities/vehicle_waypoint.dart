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

part of '../journey_sharing_fleet_engine_entities.dart';

extension type VehicleWaypoint._(JSObject _) implements JSObject {
  external VehicleWaypoint({
    num? distanceMeters,
    num? durationMillis,
    LatLngLiteral? location,
    JSArray<LatLngLiteral>? path,
    JSArray<SpeedReadingInterval>? speedReadingIntervals,
  });
  external num? distanceMeters;
  external num? durationMillis;
  external LatLngLiteral? location;
  external JSArray<LatLngLiteral>? path;
  external JSArray<SpeedReadingInterval>? speedReadingIntervals;
}
