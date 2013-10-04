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

class DirectionsStep extends jsw.TypedJsObject {
  static DirectionsStep cast(js.JsObject jsObject) => jsObject == null ? null : new DirectionsStep.fromJsObject(jsObject);
  DirectionsStep.fromJsObject(js.JsObject jsObject) : super.fromJsObject(jsObject);
  DirectionsStep() : super();

  set distance(Distance distance) => $unsafe['distance'] = distance;
  Distance get distance => Distance.cast($unsafe['distance']);
  set duration(GDuration duration) => $unsafe['duration'] = duration;
  GDuration get duration => GDuration.cast($unsafe['duration']);
  set endLocation(LatLng endLocation) => $unsafe['end_location'] = endLocation;
  LatLng get endLocation => LatLng.cast($unsafe['end_location']);
  set instructions(String instructions) => $unsafe['instructions'] = instructions;
  String get instructions => $unsafe['instructions'];
  set path(List<LatLng> path) => $unsafe['path'] = path == null ? null : path is js.Serializable ? path : js.jsify(path);
  List<LatLng> get path => jsw.TypedJsArray.castListOfSerializables($unsafe['path'], LatLng.cast);
  set startLocation(LatLng startLocation) => $unsafe['start_location'] = startLocation;
  LatLng get startLocation => LatLng.cast($unsafe['start_location']);
  set steps(List<DirectionsStep> steps) => $unsafe['steps'] = steps == null ? null : steps is js.Serializable ? steps : js.jsify(steps);
  List<DirectionsStep> get steps => jsw.TypedJsArray.castListOfSerializables($unsafe['steps'], DirectionsStep.cast);
  set transit(TransitDetails transit) => $unsafe['transit'] = transit;
  TransitDetails get transit => TransitDetails.cast($unsafe['transit']);
  set travelMode(TravelMode travelMode) => $unsafe['travel_mode'] = travelMode;
  TravelMode get travelMode => TravelMode.find($unsafe['travel_mode']);
}
