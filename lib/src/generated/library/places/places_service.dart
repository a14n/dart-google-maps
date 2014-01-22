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

class PlacesService extends jsw.TypedJsObject {
  static PlacesService $wrap(js.JsObject jsObject) => jsObject == null ? null : new PlacesService.fromJsObject(jsObject);
  PlacesService.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  PlacesService(dynamic /*HTMLDivElement|GMap*/ attrContainer)
      : super(maps['places']['PlacesService'], [jsw.mayUnwrap(attrContainer)]);

  void getDetails(PlaceDetailsRequest request, void callback(PlaceResult results, PlacesServiceStatus status)) {
    $unsafe.callMethod('getDetails', [jsw.Serializable.$unwrap(request), (js.JsObject result, String status) => callback(PlaceResult.$wrap(result), PlacesServiceStatus.$wrap(status))]);
  }
  void nearbySearch(PlaceSearchRequest request, void callback(List<PlaceResult> results, PlacesServiceStatus status, PlaceSearchPagination pagination)) {
    $unsafe.callMethod('nearbySearch', [jsw.Serializable.$unwrap(request), (js.JsObject results, String status, js.JsObject pagination) => callback(jsw.TypedJsArray.$wrapSerializables(results, PlaceResult.$wrap), PlacesServiceStatus.$wrap(status), PlaceSearchPagination.$wrap(pagination))]);
  }
  void radarSearch(RadarSearchRequest request, void callback(List<PlaceResult> results, PlacesServiceStatus status)) {
    $unsafe.callMethod('radarSearch', [jsw.Serializable.$unwrap(request), (js.JsObject results, String status) => callback(jsw.TypedJsArray.$wrapSerializables(results, PlaceResult.$wrap), PlacesServiceStatus.$wrap(status))]);
  }
  // TODO report missing PlaceSearchPagination argument
  void textSearch(TextSearchRequest request, void callback(List<PlaceResult> results, PlacesServiceStatus status, PlaceSearchPagination pagination)) {
    $unsafe.callMethod('textSearch', [jsw.Serializable.$unwrap(request), (js.JsObject results, String status, js.JsObject pagination) => callback(jsw.TypedJsArray.$wrapSerializables(results, PlaceResult.$wrap), PlacesServiceStatus.$wrap(status), PlaceSearchPagination.$wrap(pagination))]);
  }
}
