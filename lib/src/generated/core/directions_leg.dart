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

part of '../google_maps_core.dart';

@JsName()
@anonymous
abstract class DirectionsLeg {
  factory DirectionsLeg() => $js();
  // custom name for end_address
  @JsName('end_address')
  String? endAddress;
  // custom name for end_location
  @JsName('end_location')
  LatLng? endLocation;
  // custom name for start_address
  @JsName('start_address')
  String? startAddress;
  // custom name for start_location
  @JsName('start_location')
  LatLng? startLocation;
  List<DirectionsStep?>? steps;
  // custom name for traffic_speed_entry
  @JsName('traffic_speed_entry')
  List<Object?>? trafficSpeedEntry;
  // custom name for via_waypoints
  @JsName('via_waypoints')
  List<LatLng?>? viaWaypoints;
  // custom name for arrival_time
  @JsName('arrival_time')
  Time? arrivalTime;
  // custom name for departure_time
  @JsName('departure_time')
  Time? departureTime;
  Distance? distance;
  GDuration? duration;
  // custom name for duration_in_traffic
  @JsName('duration_in_traffic')
  GDuration? durationInTraffic;
}
