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

extension type AutocompletePrediction._(JSObject _) implements JSObject {
  external AutocompletePrediction({
    String description,
    JSArray<PredictionSubstring> matched_substrings,
    String place_id,
    StructuredFormatting structured_formatting,
    JSArray<PredictionTerm> terms,
    JSArray<JSString> types,
    num? distance_meters,
  });
  external String description;
  @JS('matched_substrings')
  external JSArray<PredictionSubstring> _matchedSubstrings;
  List<PredictionSubstring> get matchedSubstrings => _matchedSubstrings.toDart;
  set matchedSubstrings(List<PredictionSubstring> value) =>
      _matchedSubstrings = value.toJS;
  @JS('place_id')
  external String _placeId;
  String get placeId => _placeId;
  set placeId(String value) => _placeId = value;
  @JS('structured_formatting')
  external StructuredFormatting _structuredFormatting;
  StructuredFormatting get structuredFormatting => _structuredFormatting;
  set structuredFormatting(StructuredFormatting value) =>
      _structuredFormatting = value;
  @JS('terms')
  external JSArray<PredictionTerm> _terms;
  List<PredictionTerm> get terms => _terms.toDart;
  set terms(List<PredictionTerm> value) => _terms = value.toJS;
  @JS('types')
  external JSArray<JSString> _types;
  List<String> get types => _types.toDart.map((type) => type.toDart).toList();
  set types(List<String> value) => _types = value.jsify() as JSArray<JSString>;
  @JS('distance_meters')
  external num? _distanceMeters;
  num? get distanceMeters => _distanceMeters;
  set distanceMeters(num? value) => _distanceMeters = value;
}
