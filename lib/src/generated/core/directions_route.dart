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
abstract class DirectionsRoute {
  factory DirectionsRoute() => $js;
  LatLngBounds bounds;
  String copyrights;
  TransitFare fare;
  List<DirectionsLeg> legs;
  // custom name for overview_path
  @JsName('overview_path')
  List<LatLng> overviewPath;
  // custom name for overview_polyline
  @JsName('overview_polyline')
  String overviewPolyline;
  List<String> warnings;
  // custom name for waypoint_order
  @JsName('waypoint_order')
  List<num> waypointOrder;
}
