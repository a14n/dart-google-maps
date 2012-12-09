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

class SearchBox extends MVCObject {
  SearchBox(html.InputElement inputField, [SearchBoxOptions opts]) : super.newInstance(maps.places.SearchBox, [inputField, opts]);
  SearchBox.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  LatLngBounds get bounds => $.getBounds().map(LatLngBounds.INSTANCIATOR).value;
  set bounds(LatLngBounds bounds) => $.setBounds(bounds);

  SearchBoxEvents get on => new SearchBoxEvents._(this);
}

class SearchBoxEvents {
  static final PLACE_CHANGED = "place_changed";

  final SearchBox _searchBox;

  SearchBoxEvents._(this._searchBox);

  NoArgsEventListenerAdder get placeChanged => new NoArgsEventListenerAdder(_searchBox, PLACE_CHANGED);
}