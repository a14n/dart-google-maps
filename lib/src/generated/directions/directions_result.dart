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

part of '../directions.dart';

extension type DirectionsResult._(JSObject _) implements JSObject {
  external DirectionsResult({
    DirectionsRequest request,
    JSArray<DirectionsRoute> routes,
    JSArray<TravelMode>? available_travel_modes,
    JSArray<DirectionsGeocodedWaypoint>? geocoded_waypoints,
  });
  external DirectionsRequest request;
  external JSArray<DirectionsRoute> routes;
  @JS('available_travel_modes')
  external JSArray<TravelMode>? _availableTravelModes;
  JSArray<TravelMode>? get availableTravelModes => _availableTravelModes;
  set availableTravelModes(JSArray<TravelMode>? value) =>
      _availableTravelModes = value;
  @JS('geocoded_waypoints')
  external JSArray<DirectionsGeocodedWaypoint>? _geocodedWaypoints;
  JSArray<DirectionsGeocodedWaypoint>? get geocodedWaypoints =>
      _geocodedWaypoints;
  set geocodedWaypoints(JSArray<DirectionsGeocodedWaypoint>? value) =>
      _geocodedWaypoints = value;
}
