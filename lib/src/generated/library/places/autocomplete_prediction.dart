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

class AutocompletePrediction extends jsw.TypedJsObject {
  static AutocompletePrediction $wrap(js.JsObject jsObject) => jsObject == null ? null : new AutocompletePrediction.fromJsObject(jsObject);
  AutocompletePrediction.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  AutocompletePrediction()
      : super();

  set description(String description) => $unsafe['description'] = description;
  String get description => $unsafe['description'];
  set id(String id) => $unsafe['id'] = id;
  String get id => $unsafe['id'];
  set matchedSubstrings(List<PredictionSubstring> matchedSubstrings) => $unsafe['matched_substrings'] = jsw.jsify(matchedSubstrings);
  List<PredictionSubstring> get matchedSubstrings => jsw.TypedJsArray.$wrapSerializables($unsafe['matched_substrings'], PredictionSubstring.$wrap);
  set reference(String reference) => $unsafe['reference'] = reference;
  String get reference => $unsafe['reference'];
  set terms(List<PredictionTerm> terms) => $unsafe['terms'] = jsw.jsify(terms);
  List<PredictionTerm> get terms => jsw.TypedJsArray.$wrapSerializables($unsafe['terms'], PredictionTerm.$wrap);
  set types(List<String> types) => $unsafe['types'] = jsw.jsify(types);
  List<String> get types => jsw.TypedJsArray.$wrap($unsafe['types']);
}
