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

part of '../autocomplete_data.dart';

@JS('google.maps.places.FormattableText')
extension type FormattableText._(JSObject _) implements JSObject {
  @JS('matches')
  external JSArray<StringRange> _matches;
  List<StringRange> get matches => _matches.toDart;
  set matches(List<StringRange> value) => _matches = value.toJS;
  external String text;
}
