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
  external JSArray<JSString> fields;
  external JSAny /*Circle|CircleLiteral*/ locationRestriction;
  external JSArray<JSString>? excludedPrimaryTypes;
  external JSArray<JSString>? excludedTypes;
  external JSArray<JSString>? includedPrimaryTypes;
  external JSArray<JSString>? includedTypes;
  external String? language;
  external num? maxResultCount;
  external SearchNearbyRankPreference? rankPreference;
  external String? region;
}
