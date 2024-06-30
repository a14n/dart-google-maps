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

extension type Task._(JSObject _) implements JSObject {
  external Task({
    JSObject /*Object<[string]>*/ attributes,
    String name,
    JSArray<VehicleJourneySegment> remainingVehicleJourneySegments,
    String status,
    String type,
    Date? estimatedCompletionTime,
    VehicleLocationUpdate? latestVehicleLocationUpdate,
    String? outcome,
    LatLngLiteral? outcomeLocation,
    String? outcomeLocationSource,
    Date? outcomeTime,
    LatLngLiteral? plannedLocation,
    TimeWindow? targetTimeWindow,
    String? trackingId,
    String? vehicleId,
  });
  external JSObject /*Object<[string]>*/ attributes;
  external String name;
  @JS('remainingVehicleJourneySegments')
  external JSArray<VehicleJourneySegment> _remainingVehicleJourneySegments;
  List<VehicleJourneySegment> get remainingVehicleJourneySegments =>
      _remainingVehicleJourneySegments.toDart;
  set remainingVehicleJourneySegments(List<VehicleJourneySegment> value) =>
      _remainingVehicleJourneySegments = value.toJS;
  external String status;
  external String type;
  external Date? estimatedCompletionTime;
  external VehicleLocationUpdate? latestVehicleLocationUpdate;
  external String? outcome;
  external LatLngLiteral? outcomeLocation;
  external String? outcomeLocationSource;
  external Date? outcomeTime;
  external LatLngLiteral? plannedLocation;
  external TimeWindow? targetTimeWindow;
  external String? trackingId;
  external String? vehicleId;
}
