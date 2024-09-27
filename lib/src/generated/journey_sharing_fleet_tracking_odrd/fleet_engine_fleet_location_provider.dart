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

@JS('google.maps.journeySharing.FleetEngineFleetLocationProvider')
extension type FleetEngineFleetLocationProvider._(PollingLocationProvider _)
    implements PollingLocationProvider {
  external FleetEngineFleetLocationProvider(
    FleetEngineFleetLocationProviderOptions options,
  );
  external LatLngBoundsOrLatLngBoundsLiteral? locationRestriction;
  external num staleLocationThresholdMillis;
  external String? vehicleFilter;
  Stream<FleetEngineFleetLocationProviderUpdateEvent> get onUpdate {
    late StreamController<FleetEngineFleetLocationProviderUpdateEvent>
        sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'update',
          ((FleetEngineFleetLocationProviderUpdateEvent e) => sc.add(e)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<FleetEngineFleetLocationProviderUpdateEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }
}
