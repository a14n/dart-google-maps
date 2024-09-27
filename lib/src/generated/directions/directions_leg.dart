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

part of '../directions.dart';

extension type DirectionsLeg._(JSObject _) implements JSObject {
  external DirectionsLeg({
    String end_address,
    LatLng end_location,
    String start_address,
    LatLng start_location,
    JSArray<DirectionsStep> steps,
    JSArray<JSAny?> traffic_speed_entry,
    JSArray<LatLng> via_waypoints,
    Time? arrival_time,
    Time? departure_time,
    Distance? distance,
    Duration? duration,
    Duration? duration_in_traffic,
  });
  @JS('end_address')
  external String _endAddress;
  String get endAddress => _endAddress;
  set endAddress(String value) => _endAddress = value;
  @JS('end_location')
  external LatLng _endLocation;
  LatLng get endLocation => _endLocation;
  set endLocation(LatLng value) => _endLocation = value;
  @JS('start_address')
  external String _startAddress;
  String get startAddress => _startAddress;
  set startAddress(String value) => _startAddress = value;
  @JS('start_location')
  external LatLng _startLocation;
  LatLng get startLocation => _startLocation;
  set startLocation(LatLng value) => _startLocation = value;
  @JS('steps')
  external JSArray<DirectionsStep> _steps;
  List<DirectionsStep> get steps => _steps.toDart;
  set steps(List<DirectionsStep> value) => _steps = value.toJS;
  @JS('traffic_speed_entry')
  external JSArray<JSAny?> _trafficSpeedEntry;
  List<JSAny?> get trafficSpeedEntry => _trafficSpeedEntry.toDart;
  set trafficSpeedEntry(List<JSAny?> value) => _trafficSpeedEntry = value.toJS;
  @JS('via_waypoints')
  external JSArray<LatLng> _viaWaypoints;
  List<LatLng> get viaWaypoints => _viaWaypoints.toDart;
  set viaWaypoints(List<LatLng> value) => _viaWaypoints = value.toJS;
  @JS('arrival_time')
  external Time? _arrivalTime;
  Time? get arrivalTime => _arrivalTime;
  set arrivalTime(Time? value) => _arrivalTime = value;
  @JS('departure_time')
  external Time? _departureTime;
  Time? get departureTime => _departureTime;
  set departureTime(Time? value) => _departureTime = value;
  external Distance? distance;
  external Duration? duration;
  @JS('duration_in_traffic')
  external Duration? _durationInTraffic;
  Duration? get durationInTraffic => _durationInTraffic;
  set durationInTraffic(Duration? value) => _durationInTraffic = value;
}
