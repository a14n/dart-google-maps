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
  static SearchBox cast(js.Proxy proxy) => proxy == null ? null : new SearchBox.fromProxy(proxy);

  SubscribeStreamProvider _onPlaceChanged;

  SearchBox(html.InputElement inputField, [SearchBoxOptions opts]) : super(maps.places.SearchBox, [inputField, opts]) { _initStreams(); }
  SearchBox.fromProxy(js.Proxy proxy) : super.fromProxy(proxy) { _initStreams(); }

  void _initStreams() {
    _onPlaceChanged = event.getStreamProviderFor(this, "place_changed");
  }

  Stream get onPlaceChanged => _onPlaceChanged.stream;

  LatLngBounds get bounds => LatLngBounds.cast($unsafe.getBounds());
  List<PlaceResult> get places => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.getPlaces(), PlaceResult.cast);
  set bounds(LatLngBounds bounds) => $unsafe.setBounds(bounds);

  /// deprecated : use onXxx stream.
  @deprecated SearchBoxEvents get on => new SearchBoxEvents._(this);
}

@deprecated
class SearchBoxEvents {
  static final PLACE_CHANGED = "place_changed";

  final SearchBox _searchBox;

  SearchBoxEvents._(this._searchBox);

  NoArgsEventListenerAdder get placeChanged => new NoArgsEventListenerAdder(_searchBox, PLACE_CHANGED);
}