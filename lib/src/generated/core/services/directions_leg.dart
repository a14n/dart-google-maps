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
  static DirectionsLeg cast(js.JsObject jsObject) => jsObject == null ? null : new DirectionsLeg.fromJsObject(jsObject);
  DirectionsLeg.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  DirectionsLeg()
      : super();

  set arrivalTime(Time arrivalTime) => $unsafe['arrival_time'] = arrivalTime;
  Time get arrivalTime => Time.cast($unsafe['arrival_time']);
  set departureTime(Time departureTime) => $unsafe['departure_time'] = departureTime;
  Time get departureTime => Time.cast($unsafe['departure_time']);
  set distance(Distance distance) => $unsafe['distance'] = distance;
  Distance get distance => Distance.cast($unsafe['distance']);
  set duration(GDuration duration) => $unsafe['duration'] = duration;
  GDuration get duration => GDuration.cast($unsafe['duration']);
  set endAddress(String endAddress) => $unsafe['end_address'] = endAddress;
  String get endAddress => $unsafe['end_address'];
  set endLocation(LatLng endLocation) => $unsafe['end_location'] = endLocation;
  LatLng get endLocation => LatLng.cast($unsafe['end_location']);
  set startAddress(String startAddress) => $unsafe['start_address'] = startAddress;
  String get startAddress => $unsafe['start_address'];
  set startLocation(LatLng startLocation) => $unsafe['start_location'] = startLocation;
  LatLng get startLocation => LatLng.cast($unsafe['start_location']);
  set steps(List<DirectionsStep> steps) => $unsafe['steps'] = steps == null ? null : steps is js.Serializable ? steps : js.jsify(steps);
  List<DirectionsStep> get steps => jsw.TypedJsArray.castListOfSerializables($unsafe['steps'], DirectionsStep.cast);
  set viaWaypoints(List<LatLng> viaWaypoints) => $unsafe['via_waypoints'] = viaWaypoints == null ? null : viaWaypoints is js.Serializable ? viaWaypoints : js.jsify(viaWaypoints);
  List<LatLng> get viaWaypoints => jsw.TypedJsArray.castListOfSerializables($unsafe['via_waypoints'], LatLng.cast);
}
