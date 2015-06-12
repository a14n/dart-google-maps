// Copyright (c) 2015, Alexandre Ardhuin
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

part of google_maps.src.places;

@JsName('google.maps.places.Autocomplete')
abstract class _Autocomplete extends MVCObject {
  external factory _Autocomplete(InputElement inputField,
      [AutocompleteOptions opts]);

  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds();
  PlaceResult get place => _getPlace();
  PlaceResult _getPlace();
  void set bounds(LatLngBounds bounds) => _setBounds(bounds);
  void _setBounds(LatLngBounds bounds);
  void set componentRestrictions(ComponentRestrictions restrictions) =>
      _setComponentRestrictions(restrictions);
  void _setComponentRestrictions(ComponentRestrictions restrictions);
  void set types(List<String> types) => _setTypes(types);
  void _setTypes(List<String> types);

  Stream get onPlaceChanged =>
      getStream(this, #onPlaceChanged, "place_changed");
}
