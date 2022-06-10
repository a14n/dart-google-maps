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

part of '../google_maps_journey_sharing.dart';

@JsName()
@anonymous
abstract class JourneySharingMapViewOptions {
  factory JourneySharingMapViewOptions() => $js();
  Element? element;
  LocationProvider? locationProvider;
  Object? /*PolylineSetupOptions?|PolylineSetupOptions? Function(DefaultPolylineSetupOptions?)?*/ anticipatedRoutePolylineSetup;
  AutomaticViewportMode? automaticViewportMode;
  Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/ destinationMarkerSetup;
  MapOptions? mapOptions;
  Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/ originMarkerSetup;
  Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/ pingMarkerSetup;
  Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/ successfulTaskMarkerSetup;
  Object? /*PolylineSetupOptions?|PolylineSetupOptions? Function(DefaultPolylineSetupOptions?)?*/ takenRoutePolylineSetup;
  Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/ taskOutcomeMarkerSetup;
  Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/ unsuccessfulTaskMarkerSetup;
  Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/ vehicleMarkerSetup;
  Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/ waypointMarkerSetup;
}
