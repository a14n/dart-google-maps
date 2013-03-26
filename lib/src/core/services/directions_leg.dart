// Copyright (c) 2012, Alexandre Ardhuin
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

part of google_maps;

class DirectionsLeg extends jsw.TypedProxy {
  static DirectionsLeg cast(js.Proxy proxy) => proxy == null ? null : new DirectionsLeg.fromProxy(proxy);

  DirectionsLeg() : super();
  DirectionsLeg.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  Time get arrivalTime => Time.cast($unsafe.arrival_time);
  Time get departureTime => Time.cast($unsafe.departure_time);
  Distance get distance => Distance.cast($unsafe.distance);
  GDuration get duration => GDuration.cast($unsafe.duration);
  String get endAddress => $unsafe.end_address;
  LatLng get endLocation => LatLng.cast($unsafe.end_location);
  String get startAddress => $unsafe.start_address;
  LatLng get startLocation => LatLng.cast($unsafe.start_location);
  List<DirectionsStep> get steps => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.steps, DirectionsStep.cast);
  List<LatLng> get viaWaypoints => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.via_waypoints, LatLng.cast);
  set arrivalTime(Time arrivalTime) => $unsafe.arrival_time = arrivalTime;
  set departureTime(Time departureTime) => $unsafe.departure_time = departureTime;
  set distance(Distance distance) => $unsafe.distance = distance;
  set duration(GDuration duration) => $unsafe.duration = duration;
  set endAddress(String endAddress) => $unsafe.end_address = endAddress;
  set endLocation(LatLng endLocation) => $unsafe.end_location = endLocation;
  set startAddress(String startAddress) => $unsafe.start_address = startAddress;
  set startLocation(LatLng startLocation) => $unsafe.start_location = startLocation;
  set steps(List<DirectionsStep> steps) => $unsafe.steps = jsifyList(steps);
  set viaWaypoints(List<LatLng> viaWaypoints) => $unsafe.via_waypoints = jsifyList(viaWaypoints);
}