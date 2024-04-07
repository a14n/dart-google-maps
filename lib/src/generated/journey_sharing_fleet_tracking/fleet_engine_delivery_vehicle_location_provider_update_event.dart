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

part of '../journey_sharing_fleet_tracking.dart';

extension type FleetEngineDeliveryVehicleLocationProviderUpdateEvent._(
    JSObject _) implements JSObject {
  external FleetEngineDeliveryVehicleLocationProviderUpdateEvent({
    JSArray<VehicleJourneySegment>? completedVehicleJourneySegments,
    DeliveryVehicle? deliveryVehicle,
    JSArray<Task>? tasks,
  });
  external JSArray<VehicleJourneySegment>? completedVehicleJourneySegments;
  external DeliveryVehicle? deliveryVehicle;
  external JSArray<Task>? tasks;
}
