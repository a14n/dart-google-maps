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
  @JS('locationProviders')
  external JSArray<LocationProvider>? _locationProviders;
  List<LocationProvider>? get locationProviders => _locationProviders?.toDart;
  set locationProviders(List<LocationProvider>? value) =>
      _locationProviders = value?.toJS;
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
  @JS('destinationMarkers')
  external JSArray<Marker> _destinationMarkers;
  List<Marker> get destinationMarkers => _destinationMarkers.toDart;
  set destinationMarkers(List<Marker> value) =>
      _destinationMarkers = value.toJS;
  @JS('originMarkers')
  external JSArray<Marker> _originMarkers;
  List<Marker> get originMarkers => _originMarkers.toDart;
  set originMarkers(List<Marker> value) => _originMarkers = value.toJS;
  @JS('successfulTaskMarkers')
  external JSArray<Marker> _successfulTaskMarkers;
  List<Marker> get successfulTaskMarkers => _successfulTaskMarkers.toDart;
  set successfulTaskMarkers(List<Marker> value) =>
      _successfulTaskMarkers = value.toJS;
  @JS('taskOutcomeMarkers')
  external JSArray<Marker> _taskOutcomeMarkers;
  List<Marker> get taskOutcomeMarkers => _taskOutcomeMarkers.toDart;
  set taskOutcomeMarkers(List<Marker> value) =>
      _taskOutcomeMarkers = value.toJS;
  @JS('unsuccessfulTaskMarkers')
  external JSArray<Marker> _unsuccessfulTaskMarkers;
  List<Marker> get unsuccessfulTaskMarkers => _unsuccessfulTaskMarkers.toDart;
  set unsuccessfulTaskMarkers(List<Marker> value) =>
      _unsuccessfulTaskMarkers = value.toJS;
  @JS('vehicleMarkers')
  external JSArray<Marker> _vehicleMarkers;
  List<Marker> get vehicleMarkers => _vehicleMarkers.toDart;
  set vehicleMarkers(List<Marker> value) => _vehicleMarkers = value.toJS;
  @JS('waypointMarkers')
  external JSArray<Marker> _waypointMarkers;
  List<Marker> get waypointMarkers => _waypointMarkers.toDart;
  set waypointMarkers(List<Marker> value) => _waypointMarkers = value.toJS;
  @JS('anticipatedRoutePolylines')
  external JSArray<Polyline> _anticipatedRoutePolylines;
  List<Polyline> get anticipatedRoutePolylines =>
      _anticipatedRoutePolylines.toDart;
  set anticipatedRoutePolylines(List<Polyline> value) =>
      _anticipatedRoutePolylines = value.toJS;
  @JS('takenRoutePolylines')
  external JSArray<Polyline> _takenRoutePolylines;
  List<Polyline> get takenRoutePolylines => _takenRoutePolylines.toDart;
  set takenRoutePolylines(List<Polyline> value) =>
      _takenRoutePolylines = value.toJS;
  external void addLocationProvider(
    LocationProvider locationProvider,
  );
  external void removeLocationProvider(
    LocationProvider locationProvider,
  );
}
