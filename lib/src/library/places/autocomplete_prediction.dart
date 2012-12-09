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

class AutocompletePrediction extends jsw.IsJsProxy {
  static final INSTANCIATOR = (js.Proxy jsProxy) => new AutocompletePrediction.fromJsProxy(jsProxy);

  AutocompletePrediction() : super();
  AutocompletePrediction.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  String get description => $.description.value;
  String get id => $.id.value;
  List<PredictionSubstring> get matchedSubstrings => $.matched_substrings.map((js.Proxy jsProxy) => new jsw.JsList<PredictionSubstring>.fromJsProxy(jsProxy, PredictionSubstring.INSTANCIATOR)).value;
  String get reference => $.reference.value;
  List<PredictionTerm> get terms => $.terms.map((js.Proxy jsProxy) => new jsw.JsList<PredictionTerm>.fromJsProxy(jsProxy, PredictionTerm.INSTANCIATOR)).value;
  List<String> get types => $.types.map((js.Proxy jsProxy) => new jsw.JsList<String>.fromJsProxy(jsProxy, null)).value;
  set description(String description) => $.description = description;
  set id(String id) => $.id = id;
  set matchedSubstrings(List<PredictionSubstring> matchedSubstrings) => $.matched_substrings = matchedSubstrings;
  set reference(String reference) => $.reference = reference;
  set terms(List<PredictionTerm> terms) => $.terms = terms;
  set types(List<String> types) => $.types = types;
}