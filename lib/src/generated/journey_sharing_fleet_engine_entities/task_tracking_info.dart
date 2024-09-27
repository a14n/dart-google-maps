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

part of '../journey_sharing_fleet_engine_entities.dart';

extension type TaskTrackingInfo._(JSObject _) implements JSObject {
  external TaskTrackingInfo({
    JSObject /*Object<[string]>*/ attributes,
    String name,
    String trackingId,
    Date? estimatedArrivalTime,
    Date? estimatedTaskCompletionTime,
    VehicleLocationUpdate? latestVehicleLocationUpdate,
    LatLng? plannedLocation,
    num? remainingDrivingDistanceMeters,
    num? remainingStopCount,
    JSArray<LatLng>? routePolylinePoints,
    String? state,
    TimeWindow? targetTimeWindow,
    String? taskOutcome,
    Date? taskOutcomeTime,
  });
  external JSObject /*Object<[string]>*/ attributes;
  external String name;
  external String trackingId;
  external Date? estimatedArrivalTime;
  external Date? estimatedTaskCompletionTime;
  external VehicleLocationUpdate? latestVehicleLocationUpdate;
  external LatLng? plannedLocation;
  external num? remainingDrivingDistanceMeters;
  external num? remainingStopCount;
  @JS('routePolylinePoints')
  external JSArray<LatLng>? _routePolylinePoints;
  List<LatLng>? get routePolylinePoints => _routePolylinePoints?.toDart;
  set routePolylinePoints(List<LatLng>? value) =>
      _routePolylinePoints = value?.toJS;
  external String? state;
  external TimeWindow? targetTimeWindow;
  external String? taskOutcome;
  external Date? taskOutcomeTime;
}
