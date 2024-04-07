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

part of '../places_autocomplete_service.dart';

@JS('google.maps.places.AutocompleteService')
extension type AutocompleteService._(JSObject _) implements JSObject {
  external AutocompleteService();
  external JSPromise<AutocompleteResponse> getPlacePredictions(
    AutocompletionRequest request, [
    JSFunction /*void Function(JSArray<AutocompletePrediction>?,PlacesServiceStatus)*/ ?
        callback,
  ]);
  external void getQueryPredictions(
    QueryAutocompletionRequest request,
    JSFunction /*void Function(JSArray<QueryAutocompletePrediction>?,PlacesServiceStatus)*/
        callback,
  );
}
