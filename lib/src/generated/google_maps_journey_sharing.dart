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

part 'journey_sharing/journey_sharing_map_view.dart';
part 'journey_sharing/journey_sharing_map_view_options.dart';
part 'journey_sharing/automatic_viewport_mode.dart';
part 'journey_sharing/location_provider.dart';
part 'journey_sharing/auth_token.dart';
part 'journey_sharing/auth_token_context.dart';
part 'journey_sharing/auth_token_fetcher_options.dart';
part 'journey_sharing/fleet_engine_service_type.dart';
part 'journey_sharing/polyline_setup_options.dart';
part 'journey_sharing/default_polyline_setup_options.dart';
part 'journey_sharing/marker_setup_options.dart';
part 'journey_sharing/default_marker_setup_options.dart';
part 'journey_sharing/task.dart';
part 'journey_sharing/trip.dart';
part 'journey_sharing/delivery_vehicle.dart';
part 'journey_sharing/vehicle_journey_segment.dart';
part 'journey_sharing/vehicle_location_update.dart';
part 'journey_sharing/vehicle_waypoint.dart';
part 'journey_sharing/fleet_engine_trip_location_provider.dart';
part 'journey_sharing/fleet_engine_trip_location_provider_options.dart';
part 'journey_sharing/fleet_engine_trip_location_provider_update_event.dart';
part 'journey_sharing/fleet_engine_delivery_vehicle_location_provider.dart';
part 'journey_sharing/fleet_engine_delivery_vehicle_location_provider_options.dart';
part 'journey_sharing/fleet_engine_delivery_vehicle_filter_options.dart';
part 'journey_sharing/fleet_engine_task_filter_options.dart';
part 'journey_sharing/fleet_engine_delivery_vehicle_location_provider_update_event.dart';
part 'journey_sharing/fleet_engine_delivery_fleet_location_provider.dart';
part 'journey_sharing/fleet_engine_delivery_fleet_location_provider_options.dart';
part 'journey_sharing/fleet_engine_delivery_fleet_location_provider_update_event.dart';
part 'journey_sharing/fleet_engine_shipment_location_provider.dart';
part 'journey_sharing/fleet_engine_shipment_location_provider_options.dart';
part 'journey_sharing/fleet_engine_shipment_location_provider_update_event.dart';
