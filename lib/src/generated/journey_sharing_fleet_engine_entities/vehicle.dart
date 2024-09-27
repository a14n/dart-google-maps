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

extension type Vehicle._(JSObject _) implements JSObject {
  external Vehicle({
    JSObject /*Object<[string]>*/ attributes,
    String name,
    VehicleNavigationStatus navigationStatus,
    num remainingDistanceMeters,
    VehicleState vehicleState,
    VehicleType vehicleType,
    TripWaypoint? currentRouteSegmentEndPoint,
    Date? currentRouteSegmentVersion,
    JSArray<JSString>? currentTrips,
    Date? etaToFirstWaypoint,
    VehicleLocationUpdate? latestLocation,
    num? maximumCapacity,
    JSArray<TripType>? supportedTripTypes,
    JSArray<TripWaypoint>? waypoints,
    Date? waypointsVersion,
  });
  external JSObject /*Object<[string]>*/ attributes;
  external String name;
  external VehicleNavigationStatus navigationStatus;
  external num remainingDistanceMeters;
  external VehicleState vehicleState;
  external VehicleType vehicleType;
  external TripWaypoint? currentRouteSegmentEndPoint;
  external Date? currentRouteSegmentVersion;
  @JS('currentTrips')
  external JSArray<JSString>? _currentTrips;
  List<String>? get currentTrips =>
      _currentTrips?.toDart.map((type) => type.toDart).toList();
  set currentTrips(List<String>? value) =>
      _currentTrips = value.jsify() as JSArray<JSString>?;
  external Date? etaToFirstWaypoint;
  external VehicleLocationUpdate? latestLocation;
  external num? maximumCapacity;
  @JS('supportedTripTypes')
  external JSArray<TripType>? _supportedTripTypes;
  List<TripType>? get supportedTripTypes => _supportedTripTypes?.toDart;
  set supportedTripTypes(List<TripType>? value) =>
      _supportedTripTypes = value?.toJS;
  @JS('waypoints')
  external JSArray<TripWaypoint>? _waypoints;
  List<TripWaypoint>? get waypoints => _waypoints?.toDart;
  set waypoints(List<TripWaypoint>? value) => _waypoints = value?.toJS;
  external Date? waypointsVersion;
}
