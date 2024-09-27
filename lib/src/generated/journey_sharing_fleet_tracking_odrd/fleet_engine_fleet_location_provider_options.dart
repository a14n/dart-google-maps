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

part of '../journey_sharing_fleet_tracking_odrd.dart';

extension type FleetEngineFleetLocationProviderOptions._(JSObject _)
    implements JSObject {
  external FleetEngineFleetLocationProviderOptions({
    AuthTokenFetcher authTokenFetcher,
    String projectId,
    LatLngBoundsOrLatLngBoundsLiteral? locationRestriction,
    num? staleLocationThresholdMillis,
    String? vehicleFilter,
    JSFunction /*void Function(VehicleMarkerCustomizationFunctionParams)*/ ?
        vehicleMarkerCustomization,
  });
  external AuthTokenFetcher authTokenFetcher;
  external String projectId;
  external LatLngBoundsOrLatLngBoundsLiteral? locationRestriction;
  external num? staleLocationThresholdMillis;
  external String? vehicleFilter;
  external JSFunction /*void Function(VehicleMarkerCustomizationFunctionParams)*/ ?
      vehicleMarkerCustomization;
}
