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

part of google_maps_places;

class AutocompletionRequest extends jsw.TypedJsObject {
  static AutocompletionRequest cast(js.JsObject jsObject) => jsObject == null ? null : new AutocompletionRequest.fromJsObject(jsObject);
  AutocompletionRequest.fromJsObject(js.JsObject jsObject) : super.fromJsObject(jsObject);
  AutocompletionRequest() : super();

  set bounds(LatLngBounds bounds) => $unsafe['bounds'] = bounds;
LatLngBounds get bounds => LatLngBounds.cast($unsafe['bounds']);
set componentRestrictions(ComponentRestrictions componentRestrictions) => $unsafe['componentRestrictions'] = componentRestrictions;
ComponentRestrictions get componentRestrictions => ComponentRestrictions.cast($unsafe['componentRestrictions']);
set input(String input) => $unsafe['input'] = input;
String get input => $unsafe['input'];
set location(LatLng location) => $unsafe['location'] = location;
LatLng get location => LatLng.cast($unsafe['location']);
set offset(num offset) => $unsafe['offset'] = offset;
num get offset => $unsafe['offset'];
set radius(num radius) => $unsafe['radius'] = radius;
num get radius => $unsafe['radius'];
set types(List<String> types) => $unsafe['types'] = types == null ? null : types is js.Serializable<js.JsObject> ? types : js.jsify(types);
List<String> get types => jsw.TypedJsArray.cast($unsafe['types']);
}