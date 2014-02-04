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
  static DirectionsStep $wrap(js.JsObject jsObject) => jsObject == null ? null : new DirectionsStep.fromJsObject(jsObject);
  DirectionsStep.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  DirectionsStep();

  set distance(Distance distance) => $unsafe['distance'] = distance == null ? null : distance.$unsafe;
  Distance get distance => Distance.$wrap($unsafe['distance']);
  set duration(GDuration duration) => $unsafe['duration'] = duration == null ? null : duration.$unsafe;
  GDuration get duration => GDuration.$wrap($unsafe['duration']);
  set endLocation(LatLng endLocation) => $unsafe['end_location'] = endLocation == null ? null : endLocation.$unsafe;
  LatLng get endLocation => LatLng.$wrap($unsafe['end_location']);
  set instructions(String instructions) => $unsafe['instructions'] = instructions;
  String get instructions => $unsafe['instructions'];
  set path(List<LatLng> path) => $unsafe['path'] = jsw.jsify(path);
  List<LatLng> get path => jsw.TypedJsArray.$wrapSerializables($unsafe['path'], LatLng.$wrap);
  set startLocation(LatLng startLocation) => $unsafe['start_location'] = startLocation == null ? null : startLocation.$unsafe;
  LatLng get startLocation => LatLng.$wrap($unsafe['start_location']);
  set steps(List<DirectionsStep> steps) => $unsafe['steps'] = jsw.jsify(steps);
  List<DirectionsStep> get steps => jsw.TypedJsArray.$wrapSerializables($unsafe['steps'], DirectionsStep.$wrap);
  set transit(TransitDetails transit) => $unsafe['transit'] = transit == null ? null : transit.$unsafe;
  TransitDetails get transit => TransitDetails.$wrap($unsafe['transit']);
  set travelMode(TravelMode travelMode) => $unsafe['travel_mode'] = travelMode == null ? null : travelMode.$unsafe;
  TravelMode get travelMode => TravelMode.$wrap($unsafe['travel_mode']);
}
