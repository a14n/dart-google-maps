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

part of '../google_maps_places.dart';

@JsName('google.maps.places.AutocompleteService')
abstract class AutocompleteService {
  factory AutocompleteService() => $js();
  Future<AutocompleteResponse>? getPlacePredictions(
    AutocompletionRequest? request, [
    void Function(List<AutocompletePrediction?>? p1, PlacesServiceStatus? p2)?
        callback,
  ]);
  void getQueryPredictions(
    QueryAutocompletionRequest? request, [
    void Function(
            List<QueryAutocompletePrediction?>? p1, PlacesServiceStatus? p2)?
        callback,
  ]);
}
