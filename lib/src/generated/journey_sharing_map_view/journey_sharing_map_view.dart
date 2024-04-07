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

@JS('google.maps.journeySharing.JourneySharingMapView')
extension type JourneySharingMapView._(JSObject _) implements JSObject {
  external JourneySharingMapView(
    JourneySharingMapViewOptions options,
  );
  external AutomaticViewportMode automaticViewportMode;
  external Element element;
  external bool enableTraffic;
  external JSArray<LocationProvider>? locationProviders;
  external Map map;
  external MapOptions mapOptions;
  external LocationProvider? locationProvider;
  external MarkerSetup destinationMarkerSetup;
  external MarkerSetup originMarkerSetup;
  external MarkerSetup taskOutcomeMarkerSetup;
  external MarkerSetup unsuccessfulTaskMarkerSetup;
  external MarkerSetup vehicleMarkerSetup;
  external MarkerSetup waypointMarkerSetup;
  external PolylineSetup anticipatedRoutePolylineSetup;
  external PolylineSetup takenRoutePolylineSetup;
  external MarkerSetup pingMarkerSetup;
  external MarkerSetup successfulTaskMarkerSetup;
  external JSArray<Marker> destinationMarkers;
  external JSArray<Marker> originMarkers;
  external JSArray<Marker> successfulTaskMarkers;
  external JSArray<Marker> taskOutcomeMarkers;
  external JSArray<Marker> unsuccessfulTaskMarkers;
  external JSArray<Marker> vehicleMarkers;
  external JSArray<Marker> waypointMarkers;
  external JSArray<Polyline> anticipatedRoutePolylines;
  external JSArray<Polyline> takenRoutePolylines;
  external void addLocationProvider(
    LocationProvider locationProvider,
  );
  external void removeLocationProvider(
    LocationProvider locationProvider,
  );
}
