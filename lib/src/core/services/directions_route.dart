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

part of google_maps.src;

@anonymous
abstract class _DirectionsRoute implements JsInterface {
  external factory _DirectionsRoute();

  LatLngBounds bounds;
  String copyrights;
  TransitFare fare;
  List<DirectionsLeg> legs;
  List<LatLng> _overview_path;
  List<LatLng> get overviewPath => _overview_path;
  void set overviewPath(List<LatLng> overviewPath) {
    _overview_path = overviewPath;
  }
  String _overview_polyline;
  String get overviewPolyline => _overview_polyline;
  void set overviewPolyline(String overviewPolyline) {
    _overview_polyline = overviewPolyline;
  }
  List<String> warnings;
  List<num> _waypoint_order;
  List<num> get waypointOrder => _waypoint_order;
  void set waypointOrder(List<num> waypointOrder) {
    _waypoint_order = waypointOrder;
  }
}
