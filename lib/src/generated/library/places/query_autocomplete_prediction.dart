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

class QueryAutocompletePrediction extends jsw.TypedJsObject {
  static QueryAutocompletePrediction cast(js.JsObject jsObject) => jsObject == null ? null : new QueryAutocompletePrediction.fromJsObject(jsObject);
  QueryAutocompletePrediction.fromJsObject(js.JsObject jsObject) : super.fromJsObject(jsObject);
  QueryAutocompletePrediction() : super();

  set description(String description) => $unsafe['description'] = description;
  String get description => $unsafe['description'];
  set matchedSubstrings(List<PredictionSubstring> matchedSubstrings) => $unsafe['matched_substrings'] = matchedSubstrings == null ? null : matchedSubstrings is js.Serializable ? matchedSubstrings : js.jsify(matchedSubstrings);
  List<PredictionSubstring> get matchedSubstrings => jsw.TypedJsArray.castListOfSerializables($unsafe['matched_substrings'], PredictionSubstring.cast);
  set terms(List<PredictionTerm> terms) => $unsafe['terms'] = terms == null ? null : terms is js.Serializable ? terms : js.jsify(terms);
  List<PredictionTerm> get terms => jsw.TypedJsArray.castListOfSerializables($unsafe['terms'], PredictionTerm.cast);
}
