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

class PlaceSearchRequest extends jsw.TypedJsObject {
  static PlaceSearchRequest cast(js.JsObject jsObject) => jsObject == null ? null : new PlaceSearchRequest.fromJsObject(jsObject);
  PlaceSearchRequest.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  PlaceSearchRequest()
      : super();

  set bounds(LatLngBounds bounds) => $unsafe['bounds'] = bounds;
  LatLngBounds get bounds => LatLngBounds.cast($unsafe['bounds']);
  set keyword(String keyword) => $unsafe['keyword'] = keyword;
  String get keyword => $unsafe['keyword'];
  set location(LatLng location) => $unsafe['location'] = location;
  LatLng get location => LatLng.cast($unsafe['location']);
  set maxPriceLevel(num maxPriceLevel) => $unsafe['maxPriceLevel'] = maxPriceLevel;
  num get maxPriceLevel => $unsafe['maxPriceLevel'];
  set minPriceLevel(num minPriceLevel) => $unsafe['minPriceLevel'] = minPriceLevel;
  num get minPriceLevel => $unsafe['minPriceLevel'];
  set name(String name) => $unsafe['name'] = name;
  String get name => $unsafe['name'];
  set openNow(bool openNow) => $unsafe['openNow'] = openNow;
  bool get openNow => $unsafe['openNow'];
  set radius(num radius) => $unsafe['radius'] = radius;
  num get radius => $unsafe['radius'];
  set rankBy(RankBy rankBy) => $unsafe['rankBy'] = rankBy;
  RankBy get rankBy => RankBy.find($unsafe['rankBy']);
  set types(List<String> types) => $unsafe['types'] = types == null ? null : types is js.Serializable ? types : js.jsify(types);
  List<String> get types => jsw.TypedJsArray.cast($unsafe['types']);
}
