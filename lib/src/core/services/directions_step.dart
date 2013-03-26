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

class DirectionsStep extends jsw.TypedProxy {
  static DirectionsStep cast(js.Proxy proxy) => proxy == null ? null : new DirectionsStep.fromProxy(proxy);

  DirectionsStep() : super();
  DirectionsStep.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  Distance get distance => Distance.cast($unsafe.distance);
  GDuration get duration => GDuration.cast($unsafe.duration);
  LatLng get endLocation => LatLng.cast($unsafe.end_location);
  String get instructions => $unsafe.instructions;
  List<LatLng> get path => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.path, LatLng.cast);
  LatLng get startLocation => LatLng.cast($unsafe.start_location);
  List<DirectionsStep> get steps => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.steps, DirectionsStep.cast);
  TransitDetails get transit => TransitDetails.cast($unsafe.transit);
  TravelMode get travelMode => TravelMode.find($unsafe.travel_mode);
  set distance(Distance distance) => $unsafe.distance = distance;
  set duration(GDuration duration) => $unsafe.duration = duration;
  set endLocation(LatLng endLocation) => $unsafe.end_location = endLocation;
  set instructions(String instructions) => $unsafe.instructions = instructions;
  set path(List<LatLng> path) => $unsafe.path = jsifyList(path);
  set startLocation(LatLng startLocation) => $unsafe.start_location = startLocation;
  set steps(List<DirectionsStep> steps) => $unsafe.steps = jsifyList(steps);
  set transit(TransitDetails transit) => $unsafe.transit = transit;
  set travelMode(TravelMode travelMode) => $unsafe.travel_mode = travelMode;
}