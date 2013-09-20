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

@wrapper abstract class AutocompleteService extends jsw.TypedJsObject {
  AutocompleteService() : super(maps['places']['AutocompleteService']);

  void getPlacePredictions(AutocompletionRequest request, void callback(List<AutocompletePrediction> results, PlacesServiceStatus status)) {
    $unsafe.callMethod('getPlacePredictions', [request, (js.JsObject results, String status) => callback(jsw.TypedJsArray.castListOfSerializables(results, AutocompletePrediction.cast), PlacesServiceStatus.find(status))]);
  }
  void getQueryPredictions(QueryAutocompletionRequest request, void callback(List<QueryAutocompletePrediction> results, PlacesServiceStatus status)) {
    $unsafe.callMethod('getQueryPredictions', [request, (js.JsObject results, String status) => callback(jsw.TypedJsArray.castListOfSerializables(results, QueryAutocompletionRequest.cast), PlacesServiceStatus.find(status))]);
  }
}