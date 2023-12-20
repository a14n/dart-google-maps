// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// JsWrappingGenerator
// **************************************************************************

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

@JS()
library google_maps.journey_sharing;

import 'dart:async' show StreamController;
import 'package:google_maps/google_maps.dart';
import 'package:js_wrapping/js_wrapping.dart';
import 'package:web/web.dart' show Element;

@JS('google.maps.journeySharing.JourneySharingMapView')
class JourneySharingMapView {
  external JourneySharingMapView(JourneySharingMapViewOptions? options);

  external Object? /*PolylineSetupOptions?|PolylineSetupOptions? Function(DefaultPolylineSetupOptions?)?*/
      get anticipatedRoutePolylineSetup;

  external set anticipatedRoutePolylineSetup(
      Object? /*PolylineSetupOptions?|PolylineSetupOptions? Function(DefaultPolylineSetupOptions?)?*/
          value);

  external AutomaticViewportMode? get automaticViewportMode;

  external set automaticViewportMode(AutomaticViewportMode? value);

  external Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
      get destinationMarkerSetup;

  external set destinationMarkerSetup(
      Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
          value);

  external Element? get element;

  external set element(Element? value);

  external bool? get enableTraffic;

  external set enableTraffic(bool? value);

  external LocationProvider? get locationProvider;

  external set locationProvider(LocationProvider? value);

  external GMap? get map;

  external set map(GMap? value);

  external MapOptions? get mapOptions;

  external set mapOptions(MapOptions? value);

  external Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
      get originMarkerSetup;

  external set originMarkerSetup(
      Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
          value);

  external Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
      get pingMarkerSetup;

  external set pingMarkerSetup(
      Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
          value);

  external Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
      get successfulTaskMarkerSetup;

  external set successfulTaskMarkerSetup(
      Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
          value);

  external Object? /*PolylineSetupOptions?|PolylineSetupOptions? Function(DefaultPolylineSetupOptions?)?*/
      get takenRoutePolylineSetup;

  external set takenRoutePolylineSetup(
      Object? /*PolylineSetupOptions?|PolylineSetupOptions? Function(DefaultPolylineSetupOptions?)?*/
          value);

  external Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
      get taskOutcomeMarkerSetup;

  external set taskOutcomeMarkerSetup(
      Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
          value);

  external Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
      get unsuccessfulTaskMarkerSetup;

  external set unsuccessfulTaskMarkerSetup(
      Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
          value);

  external Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
      get vehicleMarkerSetup;

  external set vehicleMarkerSetup(
      Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
          value);

  external Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
      get waypointMarkerSetup;

  external set waypointMarkerSetup(
      Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
          value);
}

extension JourneySharingMapView$Ext on JourneySharingMapView {
  List<Polyline?>? get anticipatedRoutePolylines =>
      getProperty(this, 'anticipatedRoutePolylines')?.cast<Polyline?>();

  set anticipatedRoutePolylines(List<Polyline?>? value) {
    setProperty(this, 'anticipatedRoutePolylines', value);
  }

  List<Marker?>? get destinationMarkers =>
      getProperty(this, 'destinationMarkers')?.cast<Marker?>();

  set destinationMarkers(List<Marker?>? value) {
    setProperty(this, 'destinationMarkers', value);
  }

  List<Marker?>? get originMarkers =>
      getProperty(this, 'originMarkers')?.cast<Marker?>();

  set originMarkers(List<Marker?>? value) {
    setProperty(this, 'originMarkers', value);
  }

  List<Marker?>? get successfulTaskMarkers =>
      getProperty(this, 'successfulTaskMarkers')?.cast<Marker?>();

  set successfulTaskMarkers(List<Marker?>? value) {
    setProperty(this, 'successfulTaskMarkers', value);
  }

  List<Polyline?>? get takenRoutePolylines =>
      getProperty(this, 'takenRoutePolylines')?.cast<Polyline?>();

  set takenRoutePolylines(List<Polyline?>? value) {
    setProperty(this, 'takenRoutePolylines', value);
  }

  List<Marker?>? get taskOutcomeMarkers =>
      getProperty(this, 'taskOutcomeMarkers')?.cast<Marker?>();

  set taskOutcomeMarkers(List<Marker?>? value) {
    setProperty(this, 'taskOutcomeMarkers', value);
  }

  List<Marker?>? get unsuccessfulTaskMarkers =>
      getProperty(this, 'unsuccessfulTaskMarkers')?.cast<Marker?>();

  set unsuccessfulTaskMarkers(List<Marker?>? value) {
    setProperty(this, 'unsuccessfulTaskMarkers', value);
  }

  List<Marker?>? get vehicleMarkers =>
      getProperty(this, 'vehicleMarkers')?.cast<Marker?>();

  set vehicleMarkers(List<Marker?>? value) {
    setProperty(this, 'vehicleMarkers', value);
  }

  List<Marker?>? get waypointMarkers =>
      getProperty(this, 'waypointMarkers')?.cast<Marker?>();

  set waypointMarkers(List<Marker?>? value) {
    setProperty(this, 'waypointMarkers', value);
  }
}

@JS()
@anonymous
class JourneySharingMapViewOptions {
  external factory JourneySharingMapViewOptions();

  external Element? get element;

  external set element(Element? value);

  external LocationProvider? get locationProvider;

  external set locationProvider(LocationProvider? value);

  external Object? /*PolylineSetupOptions?|PolylineSetupOptions? Function(DefaultPolylineSetupOptions?)?*/
      get anticipatedRoutePolylineSetup;

  external set anticipatedRoutePolylineSetup(
      Object? /*PolylineSetupOptions?|PolylineSetupOptions? Function(DefaultPolylineSetupOptions?)?*/
          value);

  external AutomaticViewportMode? get automaticViewportMode;

  external set automaticViewportMode(AutomaticViewportMode? value);

  external Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
      get destinationMarkerSetup;

  external set destinationMarkerSetup(
      Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
          value);

  external MapOptions? get mapOptions;

  external set mapOptions(MapOptions? value);

  external Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
      get originMarkerSetup;

  external set originMarkerSetup(
      Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
          value);

  external Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
      get pingMarkerSetup;

  external set pingMarkerSetup(
      Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
          value);

  external Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
      get successfulTaskMarkerSetup;

  external set successfulTaskMarkerSetup(
      Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
          value);

  external Object? /*PolylineSetupOptions?|PolylineSetupOptions? Function(DefaultPolylineSetupOptions?)?*/
      get takenRoutePolylineSetup;

  external set takenRoutePolylineSetup(
      Object? /*PolylineSetupOptions?|PolylineSetupOptions? Function(DefaultPolylineSetupOptions?)?*/
          value);

  external Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
      get taskOutcomeMarkerSetup;

  external set taskOutcomeMarkerSetup(
      Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
          value);

  external Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
      get unsuccessfulTaskMarkerSetup;

  external set unsuccessfulTaskMarkerSetup(
      Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
          value);

  external Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
      get vehicleMarkerSetup;

  external set vehicleMarkerSetup(
      Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
          value);

  external Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
      get waypointMarkerSetup;

  external set waypointMarkerSetup(
      Object? /*MarkerSetupOptions?|MarkerSetupOptions? Function(DefaultMarkerSetupOptions?)?*/
          value);
}

@JS('google.maps.journeySharing.AutomaticViewportMode')
class AutomaticViewportMode {
  external static AutomaticViewportMode get FIT_ANTICIPATED_ROUTE;
  external static AutomaticViewportMode get NONE;
}

AutomaticViewportMode? AutomaticViewportMode$cast(value) {
  if (value == AutomaticViewportMode.FIT_ANTICIPATED_ROUTE)
    return AutomaticViewportMode.FIT_ANTICIPATED_ROUTE;
  if (value == AutomaticViewportMode.NONE) return AutomaticViewportMode.NONE;
  return null;
}

@JS('google.maps.journeySharing.LocationProvider')
class LocationProvider {}

extension LocationProvider$Ext on LocationProvider {
  MapsEventListener? addListener(String? eventName, Function? handler) =>
      callMethod(this, 'addListener',
          [eventName, handler == null ? null : allowInterop(handler)]);
}

@JS()
@anonymous
class AuthToken {
  external factory AuthToken();

  external num? get expiresInSeconds;

  external set expiresInSeconds(num? value);

  external String? get token;

  external set token(String? value);
}

@JS()
@anonymous
class AuthTokenContext {
  external factory AuthTokenContext();

  external String? get deliveryVehicleId;

  external set deliveryVehicleId(String? value);

  external String? get taskId;

  external set taskId(String? value);

  external String? get trackingId;

  external set trackingId(String? value);

  external String? get tripId;

  external set tripId(String? value);

  external String? get vehicleId;

  external set vehicleId(String? value);
}

@JS()
@anonymous
class AuthTokenFetcherOptions {
  external factory AuthTokenFetcherOptions();

  external AuthTokenContext? get context;

  external set context(AuthTokenContext? value);

  external FleetEngineServiceType? get serviceType;

  external set serviceType(FleetEngineServiceType? value);
}

@JS('google.maps.journeySharing.FleetEngineServiceType')
class FleetEngineServiceType {
  external static FleetEngineServiceType get DELIVERY_VEHICLE_SERVICE;
  external static FleetEngineServiceType get TASK_SERVICE;
  external static FleetEngineServiceType get TRIP_SERVICE;
  external static FleetEngineServiceType get UNKNOWN_SERVICE;
}

FleetEngineServiceType? FleetEngineServiceType$cast(value) {
  if (value == FleetEngineServiceType.DELIVERY_VEHICLE_SERVICE)
    return FleetEngineServiceType.DELIVERY_VEHICLE_SERVICE;
  if (value == FleetEngineServiceType.TASK_SERVICE)
    return FleetEngineServiceType.TASK_SERVICE;
  if (value == FleetEngineServiceType.TRIP_SERVICE)
    return FleetEngineServiceType.TRIP_SERVICE;
  if (value == FleetEngineServiceType.UNKNOWN_SERVICE)
    return FleetEngineServiceType.UNKNOWN_SERVICE;
  return null;
}

@JS()
@anonymous
class PolylineSetupOptions {
  external factory PolylineSetupOptions();

  external PolylineOptions? get polylineOptions;

  external set polylineOptions(PolylineOptions? value);

  external bool? get visible;

  external set visible(bool? value);
}

@JS()
@anonymous
class DefaultPolylineSetupOptions {
  external factory DefaultPolylineSetupOptions();

  external PolylineOptions? get defaultPolylineOptions;

  external set defaultPolylineOptions(PolylineOptions? value);

  external bool? get defaultVisible;

  external set defaultVisible(bool? value);
}

@JS()
@anonymous
class MarkerSetupOptions {
  external factory MarkerSetupOptions();

  external MarkerOptions? get markerOptions;

  external set markerOptions(MarkerOptions? value);
}

@JS()
@anonymous
class DefaultMarkerSetupOptions {
  external factory DefaultMarkerSetupOptions();

  external MarkerOptions? get defaultMarkerOptions;

  external set defaultMarkerOptions(MarkerOptions? value);
}

@JS()
@anonymous
class Task {
  external factory Task();

  external DateTime? get estimatedCompletionTime;

  external set estimatedCompletionTime(DateTime? value);

  external VehicleLocationUpdate? get latestVehicleLocationUpdate;

  external set latestVehicleLocationUpdate(VehicleLocationUpdate? value);

  external String? get name;

  external set name(String? value);

  external String? get outcome;

  external set outcome(String? value);

  external LatLngLiteral? get outcomeLocation;

  external set outcomeLocation(LatLngLiteral? value);

  external String? get outcomeLocationSource;

  external set outcomeLocationSource(String? value);

  external DateTime? get outcomeTime;

  external set outcomeTime(DateTime? value);

  external LatLngLiteral? get plannedLocation;

  external set plannedLocation(LatLngLiteral? value);

  external String? get status;

  external set status(String? value);

  external String? get trackingId;

  external set trackingId(String? value);

  external String? get type;

  external set type(String? value);

  external String? get vehicleId;

  external set vehicleId(String? value);
}

extension Task$Ext on Task {
  List<VehicleJourneySegment?>? get remainingVehicleJourneySegments =>
      getProperty(this, 'remainingVehicleJourneySegments')
          ?.cast<VehicleJourneySegment?>();

  set remainingVehicleJourneySegments(List<VehicleJourneySegment?>? value) {
    setProperty(this, 'remainingVehicleJourneySegments', value);
  }
}

@JS()
@anonymous
class Trip {
  external factory Trip();

  external LatLngLiteral? get actualDropOffLocation;

  external set actualDropOffLocation(LatLngLiteral? value);

  external LatLngLiteral? get actualPickupLocation;

  external set actualPickupLocation(LatLngLiteral? value);

  external DateTime? get dropOffTime;

  external set dropOffTime(DateTime? value);

  external VehicleLocationUpdate? get latestVehicleLocationUpdate;

  external set latestVehicleLocationUpdate(VehicleLocationUpdate? value);

  external String? get name;

  external set name(String? value);

  external num? get passengerCount;

  external set passengerCount(num? value);

  external DateTime? get pickupTime;

  external set pickupTime(DateTime? value);

  external LatLngLiteral? get plannedDropOffLocation;

  external set plannedDropOffLocation(LatLngLiteral? value);

  external LatLngLiteral? get plannedPickupLocation;

  external set plannedPickupLocation(LatLngLiteral? value);

  external String? get status;

  external set status(String? value);

  external String? get type;

  external set type(String? value);

  external String? get vehicleId;

  external set vehicleId(String? value);
}

extension Trip$Ext on Trip {
  List<VehicleWaypoint?>? get remainingWaypoints =>
      getProperty(this, 'remainingWaypoints')?.cast<VehicleWaypoint?>();

  set remainingWaypoints(List<VehicleWaypoint?>? value) {
    setProperty(this, 'remainingWaypoints', value);
  }
}

@JS()
@anonymous
class DeliveryVehicle {
  external factory DeliveryVehicle();

  external LatLngLiteral? get currentRouteSegmentEndPoint;

  external set currentRouteSegmentEndPoint(LatLngLiteral? value);

  external VehicleLocationUpdate? get latestVehicleLocationUpdate;

  external set latestVehicleLocationUpdate(VehicleLocationUpdate? value);

  external String? get name;

  external set name(String? value);

  external String? get navigationStatus;

  external set navigationStatus(String? value);

  external num? get remainingDistanceMeters;

  external set remainingDistanceMeters(num? value);

  external num? get remainingDurationMillis;

  external set remainingDurationMillis(num? value);
}

extension DeliveryVehicle$Ext on DeliveryVehicle {
  List<VehicleJourneySegment?>? get remainingVehicleJourneySegments =>
      getProperty(this, 'remainingVehicleJourneySegments')
          ?.cast<VehicleJourneySegment?>();

  set remainingVehicleJourneySegments(List<VehicleJourneySegment?>? value) {
    setProperty(this, 'remainingVehicleJourneySegments', value);
  }
}

@JS()
@anonymous
class VehicleJourneySegment {
  external factory VehicleJourneySegment();

  external num? get distanceMeters;

  external set distanceMeters(num? value);

  external num? get durationMillis;

  external set durationMillis(num? value);

  external num? get extraDurationMillis;

  external set extraDurationMillis(num? value);

  external LatLngLiteral? get location;

  external set location(LatLngLiteral? value);
}

extension VehicleJourneySegment$Ext on VehicleJourneySegment {
  List<LatLngLiteral?>? get path =>
      getProperty(this, 'path')?.cast<LatLngLiteral?>();

  set path(List<LatLngLiteral?>? value) {
    setProperty(this, 'path', value);
  }
}

@JS()
@anonymous
class VehicleLocationUpdate {
  external factory VehicleLocationUpdate();

  external num? get heading;

  external set heading(num? value);

  external LatLngLiteral? get location;

  external set location(LatLngLiteral? value);

  external num? get speedKilometersPerHour;

  external set speedKilometersPerHour(num? value);

  external DateTime? get time;

  external set time(DateTime? value);
}

@JS()
@anonymous
class VehicleWaypoint {
  external factory VehicleWaypoint();

  external num? get distanceMeters;

  external set distanceMeters(num? value);

  external num? get durationMillis;

  external set durationMillis(num? value);

  external LatLngLiteral? get location;

  external set location(LatLngLiteral? value);
}

extension VehicleWaypoint$Ext on VehicleWaypoint {
  List<LatLngLiteral?>? get path =>
      getProperty(this, 'path')?.cast<LatLngLiteral?>();

  set path(List<LatLngLiteral?>? value) {
    setProperty(this, 'path', value);
  }
}

@JS('google.maps.journeySharing.FleetEngineTripLocationProvider')
class FleetEngineTripLocationProvider extends LocationProvider {
  external FleetEngineTripLocationProvider(
      FleetEngineTripLocationProviderOptions? options);

  external String? get tripId;

  external set tripId(String? value);

  external void refresh();
}

extension FleetEngineTripLocationProvider$Ext
    on FleetEngineTripLocationProvider {
  Stream<ErrorEvent> get onError {
    late StreamController<ErrorEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'error',
          (ErrorEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<ErrorEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<FleetEngineTripLocationProviderUpdateEvent> get onUpdate {
    late StreamController<FleetEngineTripLocationProviderUpdateEvent>
        sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'update',
          (FleetEngineTripLocationProviderUpdateEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<FleetEngineTripLocationProviderUpdateEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }
}

@JS()
@anonymous
class FleetEngineTripLocationProviderOptions {
  external factory FleetEngineTripLocationProviderOptions();

  external String? get projectId;

  external set projectId(String? value);

  external String? get tripId;

  external set tripId(String? value);

  external num? get pollingIntervalMillis;

  external set pollingIntervalMillis(num? value);
}

extension FleetEngineTripLocationProviderOptions$Ext
    on FleetEngineTripLocationProviderOptions {
  Future<AuthToken?>? Function(AuthTokenFetcherOptions?)?
      get authTokenFetcher =>
          callMethod(getProperty(this, 'authTokenFetcher'), 'bind', [this]);

  set authTokenFetcher(
      Future<AuthToken?>? Function(AuthTokenFetcherOptions?)? value) {
    setProperty(
        this, 'authTokenFetcher', value == null ? null : allowInterop(value));
  }
}

@JS()
@anonymous
class FleetEngineTripLocationProviderUpdateEvent {
  external factory FleetEngineTripLocationProviderUpdateEvent();

  external Trip? get trip;

  external set trip(Trip? value);
}

@JS('google.maps.journeySharing.FleetEngineDeliveryVehicleLocationProvider')
class FleetEngineDeliveryVehicleLocationProvider extends LocationProvider {
  external FleetEngineDeliveryVehicleLocationProvider(
      FleetEngineDeliveryVehicleLocationProviderOptions? options);

  external String? get deliveryVehicleId;

  external set deliveryVehicleId(String? value);

  external bool? get shouldShowOutcomeLocations;

  external set shouldShowOutcomeLocations(bool? value);

  external bool? get shouldShowTasks;

  external set shouldShowTasks(bool? value);

  external num? get staleLocationThresholdMillis;

  external set staleLocationThresholdMillis(num? value);

  external FleetEngineTaskFilterOptions? get taskFilterOptions;

  external set taskFilterOptions(FleetEngineTaskFilterOptions? value);
}

extension FleetEngineDeliveryVehicleLocationProvider$Ext
    on FleetEngineDeliveryVehicleLocationProvider {
  Stream<ErrorEvent> get onError {
    late StreamController<ErrorEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'error',
          (ErrorEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<ErrorEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<FleetEngineDeliveryVehicleLocationProviderUpdateEvent> get onUpdate {
    late StreamController<FleetEngineDeliveryVehicleLocationProviderUpdateEvent>
        sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'update',
          (FleetEngineDeliveryVehicleLocationProviderUpdateEvent event) =>
              sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc =
        StreamController<FleetEngineDeliveryVehicleLocationProviderUpdateEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }
}

@JS()
@anonymous
class FleetEngineDeliveryVehicleLocationProviderOptions {
  external factory FleetEngineDeliveryVehicleLocationProviderOptions();

  external String? get projectId;

  external set projectId(String? value);

  external String? get deliveryVehicleId;

  external set deliveryVehicleId(String? value);

  external num? get pollingIntervalMillis;

  external set pollingIntervalMillis(num? value);

  external bool? get shouldShowOutcomeLocations;

  external set shouldShowOutcomeLocations(bool? value);

  external bool? get shouldShowTasks;

  external set shouldShowTasks(bool? value);

  external num? get staleLocationThresholdMillis;

  external set staleLocationThresholdMillis(num? value);

  external FleetEngineTaskFilterOptions? get taskFilterOptions;

  external set taskFilterOptions(FleetEngineTaskFilterOptions? value);
}

extension FleetEngineDeliveryVehicleLocationProviderOptions$Ext
    on FleetEngineDeliveryVehicleLocationProviderOptions {
  Future<AuthToken?>? Function(AuthTokenFetcherOptions?)?
      get authTokenFetcher =>
          callMethod(getProperty(this, 'authTokenFetcher'), 'bind', [this]);

  set authTokenFetcher(
      Future<AuthToken?>? Function(AuthTokenFetcherOptions?)? value) {
    setProperty(
        this, 'authTokenFetcher', value == null ? null : allowInterop(value));
  }
}

@JS()
@anonymous
class FleetEngineDeliveryVehicleFilterOptions {
  external factory FleetEngineDeliveryVehicleFilterOptions();

  external Map<String?, String?>? get requiredAttributes;

  external set requiredAttributes(Map<String?, String?>? value);
}

@JS()
@anonymous
class FleetEngineTaskFilterOptions {
  external factory FleetEngineTaskFilterOptions();

  external DateTime? get completionTimeFrom;

  external set completionTimeFrom(DateTime? value);

  external DateTime? get completionTimeTo;

  external set completionTimeTo(DateTime? value);

  external String? get state;

  external set state(String? value);
}

@JS()
@anonymous
class FleetEngineDeliveryVehicleLocationProviderUpdateEvent {
  external factory FleetEngineDeliveryVehicleLocationProviderUpdateEvent();

  external DeliveryVehicle? get deliveryVehicle;

  external set deliveryVehicle(DeliveryVehicle? value);
}

extension FleetEngineDeliveryVehicleLocationProviderUpdateEvent$Ext
    on FleetEngineDeliveryVehicleLocationProviderUpdateEvent {
  List<VehicleJourneySegment?>? get completedVehicleJourneySegments =>
      getProperty(this, 'completedVehicleJourneySegments')
          ?.cast<VehicleJourneySegment?>();

  set completedVehicleJourneySegments(List<VehicleJourneySegment?>? value) {
    setProperty(this, 'completedVehicleJourneySegments', value);
  }

  List<Task?>? get tasks => getProperty(this, 'tasks')?.cast<Task?>();

  set tasks(List<Task?>? value) {
    setProperty(this, 'tasks', value);
  }
}

@JS('google.maps.journeySharing.FleetEngineDeliveryFleetLocationProvider')
class FleetEngineDeliveryFleetLocationProvider extends LocationProvider {
  external FleetEngineDeliveryFleetLocationProvider(
      FleetEngineDeliveryFleetLocationProviderOptions? options);

  external FleetEngineDeliveryVehicleFilterOptions?
      get deliveryVehicleFilterOptions;

  external set deliveryVehicleFilterOptions(
      FleetEngineDeliveryVehicleFilterOptions? value);

  external LatLngBounds? get locationRestriction;

  external set locationRestriction(LatLngBounds? value);

  external num? get pollingIntervalMillis;

  external set pollingIntervalMillis(num? value);

  external num? get staleLocationThresholdMillis;

  external set staleLocationThresholdMillis(num? value);
}

extension FleetEngineDeliveryFleetLocationProvider$Ext
    on FleetEngineDeliveryFleetLocationProvider {
  Stream<FleetEngineDeliveryFleetLocationProviderUpdateEvent> get onUpdate {
    late StreamController<FleetEngineDeliveryFleetLocationProviderUpdateEvent>
        sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'update',
          (FleetEngineDeliveryFleetLocationProviderUpdateEvent event) =>
              sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<FleetEngineDeliveryFleetLocationProviderUpdateEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }
}

@JS()
@anonymous
class FleetEngineDeliveryFleetLocationProviderOptions {
  external factory FleetEngineDeliveryFleetLocationProviderOptions();

  external String? get projectId;

  external set projectId(String? value);

  external FleetEngineDeliveryVehicleFilterOptions?
      get deliveryVehicleFilterOptions;

  external set deliveryVehicleFilterOptions(
      FleetEngineDeliveryVehicleFilterOptions? value);

  external LatLngBounds? get locationRestriction;

  external set locationRestriction(LatLngBounds? value);

  external num? get staleLocationThresholdMillis;

  external set staleLocationThresholdMillis(num? value);
}

extension FleetEngineDeliveryFleetLocationProviderOptions$Ext
    on FleetEngineDeliveryFleetLocationProviderOptions {
  Future<AuthToken?>? Function(AuthTokenFetcherOptions?)?
      get authTokenFetcher =>
          callMethod(getProperty(this, 'authTokenFetcher'), 'bind', [this]);

  set authTokenFetcher(
      Future<AuthToken?>? Function(AuthTokenFetcherOptions?)? value) {
    setProperty(
        this, 'authTokenFetcher', value == null ? null : allowInterop(value));
  }
}

@JS()
@anonymous
class FleetEngineDeliveryFleetLocationProviderUpdateEvent {
  external factory FleetEngineDeliveryFleetLocationProviderUpdateEvent();
}

extension FleetEngineDeliveryFleetLocationProviderUpdateEvent$Ext
    on FleetEngineDeliveryFleetLocationProviderUpdateEvent {
  List<DeliveryVehicle?>? get deliveryVehicles =>
      getProperty(this, 'deliveryVehicles')?.cast<DeliveryVehicle?>();

  set deliveryVehicles(List<DeliveryVehicle?>? value) {
    setProperty(this, 'deliveryVehicles', value);
  }
}

@JS('google.maps.journeySharing.FleetEngineShipmentLocationProvider')
class FleetEngineShipmentLocationProvider extends LocationProvider {
  external FleetEngineShipmentLocationProvider(
      FleetEngineShipmentLocationProviderOptions? options);

  external String? get trackingId;

  external set trackingId(String? value);

  external void refresh();
}

extension FleetEngineShipmentLocationProvider$Ext
    on FleetEngineShipmentLocationProvider {
  Task? get task => _getTask();
  Stream<ErrorEvent> get onError {
    late StreamController<ErrorEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'error',
          (ErrorEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<ErrorEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<FleetEngineShipmentLocationProviderUpdateEvent> get onUpdate {
    late StreamController<FleetEngineShipmentLocationProviderUpdateEvent>
        sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'update',
          (FleetEngineShipmentLocationProviderUpdateEvent event) =>
              sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<FleetEngineShipmentLocationProviderUpdateEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Task? _getTask() => callMethod(this, 'getTask', []);
}

@JS()
@anonymous
class FleetEngineShipmentLocationProviderOptions {
  external factory FleetEngineShipmentLocationProviderOptions();

  external String? get projectId;

  external set projectId(String? value);

  external String? get trackingId;

  external set trackingId(String? value);

  external num? get pollingIntervalMillis;

  external set pollingIntervalMillis(num? value);
}

extension FleetEngineShipmentLocationProviderOptions$Ext
    on FleetEngineShipmentLocationProviderOptions {
  Future<AuthToken?>? Function(AuthTokenFetcherOptions?)?
      get authTokenFetcher =>
          callMethod(getProperty(this, 'authTokenFetcher'), 'bind', [this]);

  set authTokenFetcher(
      Future<AuthToken?>? Function(AuthTokenFetcherOptions?)? value) {
    setProperty(
        this, 'authTokenFetcher', value == null ? null : allowInterop(value));
  }
}

@JS()
@anonymous
class FleetEngineShipmentLocationProviderUpdateEvent {
  external factory FleetEngineShipmentLocationProviderUpdateEvent();

  external Task? get task;

  external set task(Task? value);
}
