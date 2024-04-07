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

extension type SearchByTextRequest._(JSObject _) implements JSObject {
  external SearchByTextRequest({
    JSArray<JSString> fields,
    String? includedType,
    bool? isOpenNow,
    String? language,
    JSAny? /*(LatLng|LatLngLiteral|LatLngBounds|LatLngBoundsLiteral|CircleLiteral|Circle)?*/
        locationBias,
    LatLngBoundsOrLatLngBoundsLiteral? locationRestriction,
    num? maxResultCount,
    num? minRating,
    JSArray<PriceLevel>? priceLevels,
    String? query,
    SearchByTextRankPreference? rankBy,
    SearchByTextRankPreference? rankPreference,
    String? region,
    String? textQuery,
    bool? useStrictTypeFiltering,
  });
  external JSArray<JSString> fields;
  external String? includedType;
  external bool? isOpenNow;
  external String? language;
  external JSAny? /*(LatLng|LatLngLiteral|LatLngBounds|LatLngBoundsLiteral|CircleLiteral|Circle)?*/
      locationBias;
  external LatLngBoundsOrLatLngBoundsLiteral? locationRestriction;
  external num? maxResultCount;
  external num? minRating;
  external JSArray<PriceLevel>? priceLevels;
  external String? query;
  external SearchByTextRankPreference? rankBy;
  external SearchByTextRankPreference? rankPreference;
  external String? region;
  external String? textQuery;
  external bool? useStrictTypeFiltering;
}
