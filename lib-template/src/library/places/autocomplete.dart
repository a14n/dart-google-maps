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

@wrapper @forMethods @skipConstructor abstract class Autocomplete extends MVCObject {
  jsw.SubscribeStreamProvider _onPlaceChanged;

  Autocomplete(html.InputElement inputField, [AutocompleteOptions opts]) : super(maps['places']['Autocomplete'], [jsw.convertElementToJs(inputField), opts]) { _initStreams(); }
  Autocomplete.fromJsObject(js.JsObject proxy) : super.fromJsObject(proxy) { _initStreams(); }

  void _initStreams() {
    _onPlaceChanged = event.getStreamProviderFor(this, "place_changed");
  }

  Stream get onPlaceChanged => _onPlaceChanged.stream;

  LatLngBounds get bounds;
  PlaceResult get place;
  set bounds(LatLngBounds bounds);
  set componentRestrictions(ComponentRestrictions restrictions);
  set types(List<String> types);
}
