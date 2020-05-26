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
abstract class _DirectionsStep {
  factory _DirectionsStep() => $js;
  Distance distance;
  GDuration duration;
  // custom name for end_location
  @JsName('end_location')
  LatLng endLocation;
  String instructions;
  List<LatLng> path;
  // custom name for start_location
  @JsName('start_location')
  LatLng startLocation;
  List<DirectionsStep> steps;
  TransitDetails transit;
  // custom name for travel_mode
  @JsName('travel_mode')
  TravelMode travelMode;
}
