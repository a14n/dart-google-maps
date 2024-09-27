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

part of '../place.dart';

extension type SearchNearbyRequest._(JSObject _) implements JSObject {
  external SearchNearbyRequest({
    JSArray<JSString> fields,
    JSAny /*Circle|CircleLiteral*/ locationRestriction,
    JSArray<JSString>? excludedPrimaryTypes,
    JSArray<JSString>? excludedTypes,
    JSArray<JSString>? includedPrimaryTypes,
    JSArray<JSString>? includedTypes,
    String? language,
    num? maxResultCount,
    SearchNearbyRankPreference? rankPreference,
    String? region,
  });
  @JS('fields')
  external JSArray<JSString> _fields;
  List<String> get fields => _fields.toDart.map((type) => type.toDart).toList();
  set fields(List<String> value) =>
      _fields = value.jsify() as JSArray<JSString>;
  external JSAny /*Circle|CircleLiteral*/ locationRestriction;
  @JS('excludedPrimaryTypes')
  external JSArray<JSString>? _excludedPrimaryTypes;
  List<String>? get excludedPrimaryTypes =>
      _excludedPrimaryTypes?.toDart.map((type) => type.toDart).toList();
  set excludedPrimaryTypes(List<String>? value) =>
      _excludedPrimaryTypes = value.jsify() as JSArray<JSString>?;
  @JS('excludedTypes')
  external JSArray<JSString>? _excludedTypes;
  List<String>? get excludedTypes =>
      _excludedTypes?.toDart.map((type) => type.toDart).toList();
  set excludedTypes(List<String>? value) =>
      _excludedTypes = value.jsify() as JSArray<JSString>?;
  @JS('includedPrimaryTypes')
  external JSArray<JSString>? _includedPrimaryTypes;
  List<String>? get includedPrimaryTypes =>
      _includedPrimaryTypes?.toDart.map((type) => type.toDart).toList();
  set includedPrimaryTypes(List<String>? value) =>
      _includedPrimaryTypes = value.jsify() as JSArray<JSString>?;
  @JS('includedTypes')
  external JSArray<JSString>? _includedTypes;
  List<String>? get includedTypes =>
      _includedTypes?.toDart.map((type) => type.toDart).toList();
  set includedTypes(List<String>? value) =>
      _includedTypes = value.jsify() as JSArray<JSString>?;
  external String? language;
  external num? maxResultCount;
  external SearchNearbyRankPreference? rankPreference;
  external String? region;
}
