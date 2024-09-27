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

@JS('google.maps.journeySharing.FleetEngineVehicleLocationProvider')
extension type FleetEngineVehicleLocationProvider._(PollingLocationProvider _)
    implements PollingLocationProvider {
  external FleetEngineVehicleLocationProvider(
    FleetEngineVehicleLocationProviderOptions options,
  );
  external num staleLocationThresholdMillis;
  external String vehicleId;
  external static void TRAFFIC_AWARE_ACTIVE_POLYLINE_CUSTOMIZATION_FUNCTION(
    VehiclePolylineCustomizationFunctionParams params,
  );
  external static void TRAFFIC_AWARE_REMAINING_POLYLINE_CUSTOMIZATION_FUNCTION(
    VehiclePolylineCustomizationFunctionParams params,
  );
  Stream<ErrorEvent> get onError {
    late StreamController<ErrorEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'error',
          ((ErrorEvent e) => sc.add(e)).toJS,
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

  Stream<FleetEngineVehicleLocationProviderUpdateEvent> get onUpdate {
    late StreamController<FleetEngineVehicleLocationProviderUpdateEvent>
        sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'update',
          ((FleetEngineVehicleLocationProviderUpdateEvent e) => sc.add(e)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<FleetEngineVehicleLocationProviderUpdateEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }
}
