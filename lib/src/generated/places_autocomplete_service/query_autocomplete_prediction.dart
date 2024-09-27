// Copyright 2015 Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of '../places_autocomplete_service.dart';

extension type QueryAutocompletePrediction._(JSObject _) implements JSObject {
  external QueryAutocompletePrediction({
    String description,
    JSArray<PredictionSubstring> matched_substrings,
    JSArray<PredictionTerm> terms,
    String? place_id,
  });
  external String description;
  @JS('matched_substrings')
  external JSArray<PredictionSubstring> _matchedSubstrings;
  List<PredictionSubstring> get matchedSubstrings => _matchedSubstrings.toDart;
  set matchedSubstrings(List<PredictionSubstring> value) =>
      _matchedSubstrings = value.toJS;
  @JS('terms')
  external JSArray<PredictionTerm> _terms;
  List<PredictionTerm> get terms => _terms.toDart;
  set terms(List<PredictionTerm> value) => _terms = value.toJS;
  @JS('place_id')
  external String? _placeId;
  String? get placeId => _placeId;
  set placeId(String? value) => _placeId = value;
}
