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
  static SearchBox cast(js.JsObject jsObject) => jsObject == null ? null : new SearchBox.fromJsObject(jsObject);
  jsw.SubscribeStreamProvider _onPlaceChanged;

  SearchBox(html.InputElement inputField, [SearchBoxOptions opts])
      : super(maps['places']['SearchBox'], [jsw.convertElementToJs(inputField), opts]) {
    _initStreams();
  }
  SearchBox.fromJsObject(js.JsObject proxy)
      : super.fromJsObject(proxy) {
    _initStreams();
  }

  void _initStreams() {
    _onPlaceChanged = event.getStreamProviderFor(this, "place_changed");
  }

  Stream get onPlaceChanged => _onPlaceChanged.stream;

  LatLngBounds get bounds => LatLngBounds.cast($unsafe.callMethod('getBounds'));
  List<PlaceResult> get places => jsw.TypedJsArray.castListOfSerializables($unsafe.callMethod('getPlaces'), PlaceResult.cast);
  set bounds(LatLngBounds bounds) => $unsafe.callMethod('setBounds', [bounds]);
}
