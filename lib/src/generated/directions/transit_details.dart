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

extension type TransitDetails._(JSObject _) implements JSObject {
  external TransitDetails({
    TransitStop arrival_stop,
    Time arrival_time,
    TransitStop departure_stop,
    Time departure_time,
    String headsign,
    num headway,
    TransitLine line,
    num num_stops,
    String trip_short_name,
  });
  @JS('arrival_stop')
  external TransitStop _arrivalStop;
  TransitStop get arrivalStop => _arrivalStop;
  set arrivalStop(TransitStop value) => _arrivalStop = value;
  @JS('arrival_time')
  external Time _arrivalTime;
  Time get arrivalTime => _arrivalTime;
  set arrivalTime(Time value) => _arrivalTime = value;
  @JS('departure_stop')
  external TransitStop _departureStop;
  TransitStop get departureStop => _departureStop;
  set departureStop(TransitStop value) => _departureStop = value;
  @JS('departure_time')
  external Time _departureTime;
  Time get departureTime => _departureTime;
  set departureTime(Time value) => _departureTime = value;
  external String headsign;
  external num headway;
  external TransitLine line;
  @JS('num_stops')
  external num _numStops;
  num get numStops => _numStops;
  set numStops(num value) => _numStops = value;
  @JS('trip_short_name')
  external String _tripShortName;
  String get tripShortName => _tripShortName;
  set tripShortName(String value) => _tripShortName = value;
}
