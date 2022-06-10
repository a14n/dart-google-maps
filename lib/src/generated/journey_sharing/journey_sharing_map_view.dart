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

@JsName('google.maps.journeySharing.JourneySharingMapView')
abstract class JourneySharingMapView {
  factory JourneySharingMapView(JourneySharingMapViewOptions? options) => $js();
  List<Polyline?>? anticipatedRoutePolylines;
  Object? /*PolylineSetupOptions?|PolylineSetupOptions? Function(DefaultPolylineSetupOptions?)?*/ anticipatedRoutePolylineSetup;
  AutomaticViewportMode? automaticViewportMode;
  List<Marker?>? destinationMarkers;
  Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/ destinationMarkerSetup;
  Element? element;
  bool? enableTraffic;
  LocationProvider? locationProvider;
  GMap? map;
  MapOptions? mapOptions;
  List<Marker?>? originMarkers;
  Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/ originMarkerSetup;
  Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/ pingMarkerSetup;
  List<Marker?>? successfulTaskMarkers;
  Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/ successfulTaskMarkerSetup;
  List<Polyline?>? takenRoutePolylines;
  Object? /*PolylineSetupOptions?|PolylineSetupOptions? Function(DefaultPolylineSetupOptions?)?*/ takenRoutePolylineSetup;
  List<Marker?>? taskOutcomeMarkers;
  Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/ taskOutcomeMarkerSetup;
  List<Marker?>? unsuccessfulTaskMarkers;
  Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/ unsuccessfulTaskMarkerSetup;
  List<Marker?>? vehicleMarkers;
  Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/ vehicleMarkerSetup;
  List<Marker?>? waypointMarkers;
  Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/ waypointMarkerSetup;
}
