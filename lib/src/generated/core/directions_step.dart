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
abstract class DirectionsStep {
  factory DirectionsStep() => $js();
  // custom name for encoded_lat_lngs
  @JsName('encoded_lat_lngs')
  String? encodedLatLngs;
  // custom name for end_location
  @JsName('end_location')
  LatLng? endLocation;
  // custom name for end_point
  @JsName('end_point')
  LatLng? endPoint;
  String? instructions;
  // custom name for lat_lngs
  @JsName('lat_lngs')
  List<LatLng?>? latLngs;
  String? maneuver;
  List<LatLng?>? path;
  // custom name for start_location
  @JsName('start_location')
  LatLng? startLocation;
  // custom name for start_point
  @JsName('start_point')
  LatLng? startPoint;
  // custom name for travel_mode
  @JsName('travel_mode')
  TravelMode? travelMode;
  Distance? distance;
  GDuration? duration;
  List<DirectionsStep?>? polyline;
  List<DirectionsStep?>? steps;
  TransitDetails? transit;
  // custom name for transit_details
  @JsName('transit_details')
  TransitDetails? transitDetails;
}
