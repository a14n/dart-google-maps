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
  static AutocompleteOptions $wrap(js.JsObject jsObject) => jsObject == null ? null : new AutocompleteOptions.fromJsObject(jsObject);
  AutocompleteOptions.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  AutocompleteOptions()
      : super();

  set bounds(LatLngBounds bounds) => $unsafe['bounds'] = bounds == null ? null : bounds.$unsafe;
  LatLngBounds get bounds => LatLngBounds.$wrap($unsafe['bounds']);
  set componentRestrictions(ComponentRestrictions componentRestrictions) => $unsafe['componentRestrictions'] = componentRestrictions == null ? null : componentRestrictions.$unsafe;
  ComponentRestrictions get componentRestrictions => ComponentRestrictions.$wrap($unsafe['componentRestrictions']);
  set types(List<String> types) => $unsafe['types'] = jsw.jsify(types);
  List<String> get types => jsw.TypedJsArray.$wrap($unsafe['types']);
}
