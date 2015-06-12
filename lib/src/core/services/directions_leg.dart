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
abstract class _DirectionsLeg implements JsInterface {
  external factory _DirectionsLeg();

  Time _arrival_time;
  Time get arrivalTime => _arrival_time;
  void set arrivalTime(Time arrivalTime) {
    _arrival_time = arrivalTime;
  }
  Time _departure_time;
  Time get departureTime => _departure_time;
  void set departureTime(Time departureTime) {
    _departure_time = departureTime;
  }
  Distance distance;
  GDuration duration;
  GDuration _duration_in_traffic;
  GDuration get durationInTraffic => _duration_in_traffic;
  void set durationInTraffic(GDuration durationInTraffic) {
    _duration_in_traffic = durationInTraffic;
  }
  String _end_address;
  String get endAddress => _end_address;
  void set endAddress(String endAddress) {
    _end_address = endAddress;
  }
  LatLng _end_location;
  LatLng get endLocation => _end_location;
  void set endLocation(LatLng endLocation) {
    _end_location = endLocation;
  }
  String _start_address;
  String get startAddress => _start_address;
  void set startAddress(String startAddress) {
    _start_address = startAddress;
  }
  LatLng _start_location;
  LatLng get startLocation => _start_location;
  void set startLocation(LatLng startLocation) {
    _start_location = startLocation;
  }
  List<DirectionsStep> steps;
  List<LatLng> _via_waypoints;
  List<LatLng> get viaWaypoints => _via_waypoints;
  void set viaWaypoints(List<LatLng> viaWaypoints) {
    _via_waypoints = viaWaypoints;
  }
}
