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

class PlaceSearchRequest extends jsw.TypedProxy {
  static PlaceSearchRequest cast(js.Proxy proxy) => proxy == null ? null : new PlaceSearchRequest.fromProxy(proxy);

  PlaceSearchRequest() : super();
  PlaceSearchRequest.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  LatLngBounds get bounds => LatLngBounds.cast($unsafe['bounds']);
  String get keyword => $unsafe['keyword'];
  LatLng get location => LatLng.cast($unsafe['location']);
  num get maxPriceLevel => $unsafe['maxPriceLevel'];
  num get minPriceLevel => $unsafe['minPriceLevel'];
  String get name => $unsafe['name'];
  bool get openNow => $unsafe['openNow'];
  num get radius => $unsafe['radius'];
  RankBy get rankBy => RankBy.find($unsafe['rankBy']);
  List<String> get types => jsw.JsArrayToListAdapter.cast($unsafe['types']);
  set bounds(LatLngBounds bounds) => $unsafe['bounds'] = bounds;
  set keyword(String keyword) => $unsafe['keyword'] = keyword;
  set location(LatLng location) => $unsafe['location'] = location;
  set maxPriceLevel(num maxPriceLevel) => $unsafe['maxPriceLevel'] = maxPriceLevel;
  set minPriceLevel(num minPriceLevel) => $unsafe['minPriceLevel'] = minPriceLevel;
  set name(String name) => $unsafe['name'] = name;
  set openNow(bool openNow) => $unsafe['openNow'] = openNow;
  set radius(num radius) => $unsafe['radius'] = radius;
  set rankBy(RankBy rankBy) => $unsafe['rankBy'] = rankBy;
  set types(List<String> types) => $unsafe['types'] = jsifyList(types);
}