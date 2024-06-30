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

extension type TripWaypoint._(JSObject _) implements JSObject {
  external TripWaypoint({
    num? distanceMeters,
    num? durationMillis,
    LatLng? location,
    JSArray<LatLng>? path,
    JSArray<SpeedReadingInterval>? speedReadingIntervals,
    String? tripId,
    WaypointType? waypointType,
  });
  external num? distanceMeters;
  external num? durationMillis;
  external LatLng? location;
  @JS('path')
  external JSArray<LatLng>? _path;
  List<LatLng>? get path => _path?.toDart;
  set path(List<LatLng>? value) => _path = value?.toJS;
  @JS('speedReadingIntervals')
  external JSArray<SpeedReadingInterval>? _speedReadingIntervals;
  List<SpeedReadingInterval>? get speedReadingIntervals =>
      _speedReadingIntervals?.toDart;
  set speedReadingIntervals(List<SpeedReadingInterval>? value) =>
      _speedReadingIntervals = value?.toJS;
  external String? tripId;
  external WaypointType? waypointType;
}
