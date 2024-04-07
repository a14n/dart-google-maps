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

part of '../journey_sharing_map_view.dart';

extension type JourneySharingMapViewOptions._(JSObject _) implements JSObject {
  external JourneySharingMapViewOptions({
    Element element,
    PolylineSetup? anticipatedRoutePolylineSetup,
    AutomaticViewportMode? automaticViewportMode,
    MarkerSetup? destinationMarkerSetup,
    LocationProvider? locationProvider,
    JSArray<LocationProvider>? locationProviders,
    MapOptions? mapOptions,
    MarkerSetup? originMarkerSetup,
    MarkerSetup? pingMarkerSetup,
    MarkerSetup? successfulTaskMarkerSetup,
    PolylineSetup? takenRoutePolylineSetup,
    MarkerSetup? taskOutcomeMarkerSetup,
    MarkerSetup? unsuccessfulTaskMarkerSetup,
    MarkerSetup? vehicleMarkerSetup,
    MarkerSetup? waypointMarkerSetup,
  });
  external Element element;
  external PolylineSetup? anticipatedRoutePolylineSetup;
  external AutomaticViewportMode? automaticViewportMode;
  external MarkerSetup? destinationMarkerSetup;
  external LocationProvider? locationProvider;
  external JSArray<LocationProvider>? locationProviders;
  external MapOptions? mapOptions;
  external MarkerSetup? originMarkerSetup;
  external MarkerSetup? pingMarkerSetup;
  external MarkerSetup? successfulTaskMarkerSetup;
  external PolylineSetup? takenRoutePolylineSetup;
  external MarkerSetup? taskOutcomeMarkerSetup;
  external MarkerSetup? unsuccessfulTaskMarkerSetup;
  external MarkerSetup? vehicleMarkerSetup;
  external MarkerSetup? waypointMarkerSetup;
}
