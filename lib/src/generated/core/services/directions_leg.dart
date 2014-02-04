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

class DirectionsLeg extends jsw.TypedJsObject {
  static DirectionsLeg $wrap(js.JsObject jsObject) => jsObject == null ? null : new DirectionsLeg.fromJsObject(jsObject);
  DirectionsLeg.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  DirectionsLeg();

  set arrivalTime(Time arrivalTime) => $unsafe['arrival_time'] = arrivalTime == null ? null : arrivalTime.$unsafe;
  Time get arrivalTime => Time.$wrap($unsafe['arrival_time']);
  set departureTime(Time departureTime) => $unsafe['departure_time'] = departureTime == null ? null : departureTime.$unsafe;
  Time get departureTime => Time.$wrap($unsafe['departure_time']);
  set distance(Distance distance) => $unsafe['distance'] = distance == null ? null : distance.$unsafe;
  Distance get distance => Distance.$wrap($unsafe['distance']);
  set duration(GDuration duration) => $unsafe['duration'] = duration == null ? null : duration.$unsafe;
  GDuration get duration => GDuration.$wrap($unsafe['duration']);
  set endAddress(String endAddress) => $unsafe['end_address'] = endAddress;
  String get endAddress => $unsafe['end_address'];
  set endLocation(LatLng endLocation) => $unsafe['end_location'] = endLocation == null ? null : endLocation.$unsafe;
  LatLng get endLocation => LatLng.$wrap($unsafe['end_location']);
  set startAddress(String startAddress) => $unsafe['start_address'] = startAddress;
  String get startAddress => $unsafe['start_address'];
  set startLocation(LatLng startLocation) => $unsafe['start_location'] = startLocation == null ? null : startLocation.$unsafe;
  LatLng get startLocation => LatLng.$wrap($unsafe['start_location']);
  set steps(List<DirectionsStep> steps) => $unsafe['steps'] = jsw.jsify(steps);
  List<DirectionsStep> get steps => jsw.TypedJsArray.$wrapSerializables($unsafe['steps'], DirectionsStep.$wrap);
  set viaWaypoints(List<LatLng> viaWaypoints) => $unsafe['via_waypoints'] = jsw.jsify(viaWaypoints);
  List<LatLng> get viaWaypoints => jsw.TypedJsArray.$wrapSerializables($unsafe['via_waypoints'], LatLng.$wrap);
}
