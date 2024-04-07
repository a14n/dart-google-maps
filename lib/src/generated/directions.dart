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

import 'dart:async' show Stream, StreamController;
import 'dart:js_interop';

import 'package:web/web.dart' show HTMLElement;

import '/src/js/date.dart' show Date;
import 'coordinates.dart'
    show LatLng, LatLngBounds, LatLngLiteral, LatLngOrLatLngLiteral;
import 'event.dart' show MVCObject, MapsEventListener, event;
import 'info_window.dart' show InfoWindow;
import 'map.dart' show Map;
import 'marker.dart' show MarkerOptions;
import 'polygon.dart' show PolylineOptions;

part 'directions/directions_geocoded_waypoint.dart';
part 'directions/directions_leg.dart';
part 'directions/directions_polyline.dart';
part 'directions/directions_renderer.dart';
part 'directions/directions_renderer_options.dart';
part 'directions/directions_request.dart';
part 'directions/directions_result.dart';
part 'directions/directions_route.dart';
part 'directions/directions_service.dart';
part 'directions/directions_status.dart';
part 'directions/directions_step.dart';
part 'directions/directions_travel_mode.dart';
part 'directions/directions_unit_system.dart';
part 'directions/directions_waypoint.dart';
part 'directions/distance.dart';
part 'directions/driving_options.dart';
part 'directions/duration.dart';
part 'directions/place.dart';
part 'directions/time.dart';
part 'directions/traffic_model.dart';
part 'directions/transit_agency.dart';
part 'directions/transit_details.dart';
part 'directions/transit_fare.dart';
part 'directions/transit_line.dart';
part 'directions/transit_mode.dart';
part 'directions/transit_options.dart';
part 'directions/transit_route_preference.dart';
part 'directions/transit_stop.dart';
part 'directions/transit_vehicle.dart';
part 'directions/travel_mode.dart';
part 'directions/unit_system.dart';
part 'directions/vehicle_type.dart';
