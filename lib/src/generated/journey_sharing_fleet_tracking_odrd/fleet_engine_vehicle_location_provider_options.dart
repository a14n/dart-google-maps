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

extension type FleetEngineVehicleLocationProviderOptions._(JSObject _)
    implements JSObject {
  external FleetEngineVehicleLocationProviderOptions({
    AuthTokenFetcher authTokenFetcher,
    String projectId,
    JSAny? /*(void Function(VehiclePolylineCustomizationFunctionParams)|PolylineOptions)?*/
        activePolylineCustomization,
    JSAny? /*(void Function(VehicleWaypointMarkerCustomizationFunctionParams)|MarkerOptions)?*/
        destinationMarkerCustomization,
    JSAny? /*(void Function(VehicleWaypointMarkerCustomizationFunctionParams)|MarkerOptions)?*/
        intermediateDestinationMarkerCustomization,
    JSAny? /*(void Function(VehicleWaypointMarkerCustomizationFunctionParams)|MarkerOptions)?*/
        originMarkerCustomization,
    num? pollingIntervalMillis,
    JSAny? /*(void Function(VehiclePolylineCustomizationFunctionParams)|PolylineOptions)?*/
        remainingPolylineCustomization,
    num? staleLocationThresholdMillis,
    JSAny? /*(void Function(VehiclePolylineCustomizationFunctionParams)|PolylineOptions)?*/
        takenPolylineCustomization,
    String? vehicleId,
    JSAny? /*(void Function(VehicleMarkerCustomizationFunctionParams)|MarkerOptions)?*/
        vehicleMarkerCustomization,
  });
  external AuthTokenFetcher authTokenFetcher;
  external String projectId;
  external JSAny? /*(void Function(VehiclePolylineCustomizationFunctionParams)|PolylineOptions)?*/
      activePolylineCustomization;
  external JSAny? /*(void Function(VehicleWaypointMarkerCustomizationFunctionParams)|MarkerOptions)?*/
      destinationMarkerCustomization;
  external JSAny? /*(void Function(VehicleWaypointMarkerCustomizationFunctionParams)|MarkerOptions)?*/
      intermediateDestinationMarkerCustomization;
  external JSAny? /*(void Function(VehicleWaypointMarkerCustomizationFunctionParams)|MarkerOptions)?*/
      originMarkerCustomization;
  external num? pollingIntervalMillis;
  external JSAny? /*(void Function(VehiclePolylineCustomizationFunctionParams)|PolylineOptions)?*/
      remainingPolylineCustomization;
  external num? staleLocationThresholdMillis;
  external JSAny? /*(void Function(VehiclePolylineCustomizationFunctionParams)|PolylineOptions)?*/
      takenPolylineCustomization;
  external String? vehicleId;
  external JSAny? /*(void Function(VehicleMarkerCustomizationFunctionParams)|MarkerOptions)?*/
      vehicleMarkerCustomization;
}
