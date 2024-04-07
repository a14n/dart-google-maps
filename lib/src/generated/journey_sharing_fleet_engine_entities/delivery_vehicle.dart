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

extension type DeliveryVehicle._(JSObject _) implements JSObject {
  external DeliveryVehicle({
    JSObject /*Object<[string]>*/ attributes,
    String name,
    String navigationStatus,
    num remainingDistanceMeters,
    JSArray<VehicleJourneySegment> remainingVehicleJourneySegments,
    LatLngLiteral? currentRouteSegmentEndPoint,
    VehicleLocationUpdate? latestVehicleLocationUpdate,
    num? remainingDurationMillis,
  });
  external JSObject /*Object<[string]>*/ attributes;
  external String name;
  external String navigationStatus;
  external num remainingDistanceMeters;
  external JSArray<VehicleJourneySegment> remainingVehicleJourneySegments;
  external LatLngLiteral? currentRouteSegmentEndPoint;
  external VehicleLocationUpdate? latestVehicleLocationUpdate;
  external num? remainingDurationMillis;
}
