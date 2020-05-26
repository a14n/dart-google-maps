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

@JsName()
@anonymous
abstract class _StructuredFormatting {
  factory _StructuredFormatting() => $js;
  // custom name for main_text
  @JsName('main_text')
  String mainText;
  // custom name for main_text_matched_substrings
  @JsName('main_text_matched_substrings')
  List<PredictionSubstring> mainTextMatchedSubstrings;
  // custom name for secondary_text
  @JsName('secondary_text')
  String secondaryText;
}
