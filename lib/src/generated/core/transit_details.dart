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
abstract class TransitDetails {
  factory TransitDetails() => $js;
  // custom name for arrival_stop
  @JsName('arrival_stop')
  TransitStop arrivalStop;
  // custom name for arrival_time
  @JsName('arrival_time')
  Time arrivalTime;
  // custom name for departure_stop
  @JsName('departure_stop')
  TransitStop departureStop;
  // custom name for departure_time
  @JsName('departure_time')
  Time departureTime;
  String headsign;
  num headway;
  TransitLine line;
  // custom name for num_stops
  @JsName('num_stops')
  num numStops;
  // custom name for trip_short_name
  @JsName('trip_short_name')
  String tripShortName;
}
