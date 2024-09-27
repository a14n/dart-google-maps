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

import 'dart:js_interop';
import 'coordinates.dart' show LatLngBoundsOrLatLngBoundsLiteral;
import 'dart:async' show Stream, StreamController;
import 'event.dart' show ErrorEvent, MapsEventListener, event;
import 'journey_sharing_authentication.dart' show AuthTokenFetcher;
import 'journey_sharing_fleet_engine_entities.dart' show Trip, Vehicle;
import 'journey_sharing_map_view.dart' show PollingLocationProvider;
import 'journey_sharing_ui_customization.dart'
    show
        VehicleMarkerCustomizationFunctionParams,
        VehiclePolylineCustomizationFunctionParams,
        VehicleWaypointMarkerCustomizationFunctionParams;
part 'journey_sharing_fleet_tracking_odrd/fleet_engine_fleet_location_provider.dart';
part 'journey_sharing_fleet_tracking_odrd/fleet_engine_fleet_location_provider_options.dart';
part 'journey_sharing_fleet_tracking_odrd/fleet_engine_fleet_location_provider_update_event.dart';
part 'journey_sharing_fleet_tracking_odrd/fleet_engine_vehicle_location_provider.dart';
part 'journey_sharing_fleet_tracking_odrd/fleet_engine_vehicle_location_provider_options.dart';
part 'journey_sharing_fleet_tracking_odrd/fleet_engine_vehicle_location_provider_update_event.dart';
