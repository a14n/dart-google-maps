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

class AutocompleteOptions extends jsw.TypedJsObject {
  static AutocompleteOptions cast(js.JsObject jsObject) => jsObject == null ? null : new AutocompleteOptions.fromJsObject(jsObject);
  AutocompleteOptions.fromJsObject(js.JsObject jsObject) : super.fromJsObject(jsObject);
  AutocompleteOptions() : super();

  set bounds(LatLngBounds bounds) => $unsafe['bounds'] = bounds;
  LatLngBounds get bounds => LatLngBounds.cast($unsafe['bounds']);
  set componentRestrictions(ComponentRestrictions componentRestrictions) => $unsafe['componentRestrictions'] = componentRestrictions;
  ComponentRestrictions get componentRestrictions => ComponentRestrictions.cast($unsafe['componentRestrictions']);
  set types(List<String> types) => $unsafe['types'] = types == null ? null : types is js.Serializable ? types : js.jsify(types);
  List<String> get types => jsw.TypedJsArray.cast($unsafe['types']);
}
