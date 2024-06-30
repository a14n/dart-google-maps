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

extension type Trip._(JSObject _) implements JSObject {
  external Trip({
    String name,
    num passengerCount,
    JSArray<VehicleWaypoint> remainingWaypoints,
    String status,
    String type,
    String vehicleId,
    LatLngLiteral? actualDropOffLocation,
    LatLngLiteral? actualPickupLocation,
    Date? dropOffTime,
    VehicleLocationUpdate? latestVehicleLocationUpdate,
    Date? pickupTime,
    LatLngLiteral? plannedDropOffLocation,
    LatLngLiteral? plannedPickupLocation,
  });
  external String name;
  external num passengerCount;
  @JS('remainingWaypoints')
  external JSArray<VehicleWaypoint> _remainingWaypoints;
  List<VehicleWaypoint> get remainingWaypoints => _remainingWaypoints.toDart;
  set remainingWaypoints(List<VehicleWaypoint> value) =>
      _remainingWaypoints = value.toJS;
  external String status;
  external String type;
  external String vehicleId;
  external LatLngLiteral? actualDropOffLocation;
  external LatLngLiteral? actualPickupLocation;
  external Date? dropOffTime;
  external VehicleLocationUpdate? latestVehicleLocationUpdate;
  external Date? pickupTime;
  external LatLngLiteral? plannedDropOffLocation;
  external LatLngLiteral? plannedPickupLocation;
}
