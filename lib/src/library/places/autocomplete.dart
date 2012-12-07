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

class Autocomplete extends MVCObject {
  Autocomplete(html.InputElement inputField, [AutocompleteOptions opts]) : super.newInstance(maps.places.Autocomplete, [inputField, opts]);
  Autocomplete.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  LatLngBounds get bounds => $.getBounds().map(LatLngBounds.INSTANCIATOR).value;
  PlaceResult get place => $.getPlace().map(PlaceResult.INSTANCIATOR).value;
  set bounds(LatLngBounds bounds) => $.setBounds(bounds);
  set componentRestrictions(ComponentRestrictions restrictions) => $.setComponentRestrictions(restrictions);
  set types(List<String> types) => $.setTypes(types);

  AutocompleteEvents get on => new AutocompleteEvents._(this);
}

class AutocompleteEvents {
  static final PLACE_CHANGED = "place_changed";
  
  final Autocomplete _autocomplete;

  AutocompleteEvents._(this._autocomplete);

  NoArgsEventListenerAdder get placeChanged => new NoArgsEventListenerAdder(_autocomplete, PLACE_CHANGED);
}