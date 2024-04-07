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

extension type FleetEngineDeliveryVehicleLocationProviderOptions._(JSObject _)
    implements JSObject {
  external FleetEngineDeliveryVehicleLocationProviderOptions({
    AuthTokenFetcher authTokenFetcher,
    String projectId,
    JSAny? /*(void Function(DeliveryVehiclePolylineCustomizationFunctionParams)|PolylineOptions)?*/
        activePolylineCustomization,
    String? deliveryVehicleId,
    JSAny? /*(void Function(DeliveryVehicleMarkerCustomizationFunctionParams)|MarkerOptions)?*/
        deliveryVehicleMarkerCustomization,
    JSAny? /*(void Function(PlannedStopMarkerCustomizationFunctionParams)|MarkerOptions)?*/
        plannedStopMarkerCustomization,
    num? pollingIntervalMillis,
    JSAny? /*(void Function(DeliveryVehiclePolylineCustomizationFunctionParams)|PolylineOptions)?*/
        remainingPolylineCustomization,
    bool? shouldShowOutcomeLocations,
    bool? shouldShowTasks,
    num? staleLocationThresholdMillis,
    JSAny? /*(void Function(DeliveryVehiclePolylineCustomizationFunctionParams)|PolylineOptions)?*/
        takenPolylineCustomization,
    FleetEngineTaskFilterOptions? taskFilterOptions,
    JSAny? /*(void Function(TaskMarkerCustomizationFunctionParams)|MarkerOptions)?*/
        taskMarkerCustomization,
    JSFunction /*void Function(TaskMarkerCustomizationFunctionParams)*/ ?
        taskOutcomeMarkerCustomization,
  });
  external AuthTokenFetcher authTokenFetcher;
  external String projectId;
  external JSAny? /*(void Function(DeliveryVehiclePolylineCustomizationFunctionParams)|PolylineOptions)?*/
      activePolylineCustomization;
  external String? deliveryVehicleId;
  external JSAny? /*(void Function(DeliveryVehicleMarkerCustomizationFunctionParams)|MarkerOptions)?*/
      deliveryVehicleMarkerCustomization;
  external JSAny? /*(void Function(PlannedStopMarkerCustomizationFunctionParams)|MarkerOptions)?*/
      plannedStopMarkerCustomization;
  external num? pollingIntervalMillis;
  external JSAny? /*(void Function(DeliveryVehiclePolylineCustomizationFunctionParams)|PolylineOptions)?*/
      remainingPolylineCustomization;
  external bool? shouldShowOutcomeLocations;
  external bool? shouldShowTasks;
  external num? staleLocationThresholdMillis;
  external JSAny? /*(void Function(DeliveryVehiclePolylineCustomizationFunctionParams)|PolylineOptions)?*/
      takenPolylineCustomization;
  external FleetEngineTaskFilterOptions? taskFilterOptions;
  external JSAny? /*(void Function(TaskMarkerCustomizationFunctionParams)|MarkerOptions)?*/
      taskMarkerCustomization;
  external JSFunction /*void Function(TaskMarkerCustomizationFunctionParams)*/ ?
      taskOutcomeMarkerCustomization;
}
