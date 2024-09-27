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

part of '../journey_sharing_shipment_tracking.dart';

extension type FleetEngineShipmentLocationProviderOptions._(JSObject _)
    implements JSObject {
  external FleetEngineShipmentLocationProviderOptions({
    AuthTokenFetcher authTokenFetcher,
    String projectId,
    JSAny? /*(void Function(ShipmentPolylineCustomizationFunctionParams)|PolylineOptions)?*/
        activePolylineCustomization,
    JSAny? /*(void Function(ShipmentMarkerCustomizationFunctionParams)|MarkerOptions)?*/
        deliveryVehicleMarkerCustomization,
    JSAny? /*(void Function(ShipmentMarkerCustomizationFunctionParams)|MarkerOptions)?*/
        destinationMarkerCustomization,
    num? pollingIntervalMillis,
    JSAny? /*(void Function(ShipmentPolylineCustomizationFunctionParams)|PolylineOptions)?*/
        remainingPolylineCustomization,
    JSAny? /*(void Function(ShipmentPolylineCustomizationFunctionParams)|PolylineOptions)?*/
        takenPolylineCustomization,
    String? trackingId,
  });
  external AuthTokenFetcher authTokenFetcher;
  external String projectId;
  external JSAny? /*(void Function(ShipmentPolylineCustomizationFunctionParams)|PolylineOptions)?*/
      activePolylineCustomization;
  external JSAny? /*(void Function(ShipmentMarkerCustomizationFunctionParams)|MarkerOptions)?*/
      deliveryVehicleMarkerCustomization;
  external JSAny? /*(void Function(ShipmentMarkerCustomizationFunctionParams)|MarkerOptions)?*/
      destinationMarkerCustomization;
  external num? pollingIntervalMillis;
  external JSAny? /*(void Function(ShipmentPolylineCustomizationFunctionParams)|PolylineOptions)?*/
      remainingPolylineCustomization;
  external JSAny? /*(void Function(ShipmentPolylineCustomizationFunctionParams)|PolylineOptions)?*/
      takenPolylineCustomization;
  external String? trackingId;
}
