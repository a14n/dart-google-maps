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

class PlacesService extends jsw.TypedProxy {
  static PlacesService cast(js.Proxy proxy) => proxy == null ? null : new PlacesService.fromProxy(proxy);

  PlacesService(dynamic/*HTMLDivElement|Map*/ attrContainer) : super(maps.places.PlacesService, [attrContainer]);
  PlacesService.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  void getDetails(PlaceDetailsRequest request, void callback(PlaceResult results, PlacesServiceStatus status)) {
    $unsafe.getDetails(request, new js.Callback.once((js.Proxy result, String status) => callback(PlaceResult.cast(result), PlacesServiceStatus.find(status))));
  }
  void nearbySearch(PlaceSearchRequest request, void callback(List<PlaceResult> results, PlacesServiceStatus status, PlaceSearchPagination pagination)) {
    $unsafe.nearbySearch(request, new js.Callback.once((js.Proxy results, String status, js.Proxy pagination) => callback(jsw.JsArrayToListAdapter.castListOfSerializables(results, PlaceResult.cast), PlacesServiceStatus.find(status), PlaceSearchPagination.cast(pagination))));
  }
  void radarSearch(RadarSearchRequest request, void callback(List<PlaceResult> results, PlacesServiceStatus status)) {
    $unsafe.radarSearch(request, new js.Callback.once((js.Proxy results, String status) => callback(jsw.JsArrayToListAdapter.castListOfSerializables(results, PlaceResult.cast), PlacesServiceStatus.find(status))));
  }
  void textSearch(TextSearchRequest request, void callback(List<PlaceResult> results, PlacesServiceStatus status)) {
    $unsafe.textSearch(request, new js.Callback.once((js.Proxy results, String status) => callback(jsw.JsArrayToListAdapter.castListOfSerializables(results, PlaceResult.cast), PlacesServiceStatus.find(status))));
  }
}