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

extension type StructuredFormatting._(JSObject _) implements JSObject {
  external StructuredFormatting({
    String main_text,
    JSArray<PredictionSubstring> main_text_matched_substrings,
    String secondary_text,
  });
  @JS('main_text')
  external String _mainText;
  String get mainText => _mainText;
  set mainText(String value) => _mainText = value;
  @JS('main_text_matched_substrings')
  external JSArray<PredictionSubstring> _mainTextMatchedSubstrings;
  List<PredictionSubstring> get mainTextMatchedSubstrings =>
      _mainTextMatchedSubstrings.toDart;
  set mainTextMatchedSubstrings(List<PredictionSubstring> value) =>
      _mainTextMatchedSubstrings = value.toJS;
  @JS('secondary_text')
  external String _secondaryText;
  String get secondaryText => _secondaryText;
  set secondaryText(String value) => _secondaryText = value;
}
