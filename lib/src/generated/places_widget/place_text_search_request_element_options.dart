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

part of '../places_widget.dart';

extension type PlaceTextSearchRequestElementOptions._(JSObject _)
    implements JSObject {
  external PlaceTextSearchRequestElementOptions({
    JSArray<EVConnectorType>? evConnectorTypes,
    num? evMinimumChargingRateKw,
    String? includedType,
    bool? isOpenNow,
    JSAny? /*(string|LatLngAltitude|LatLngBounds|Circle|LatLng|LatLngLiteral|LatLngAltitudeLiteral|LatLngBoundsLiteral|CircleLiteral)?*/
        locationBias,
    LatLngBoundsOrLatLngBoundsLiteral? locationRestriction,
    num? maxResultCount,
    num? minRating,
    JSArray<PriceLevel>? priceLevels,
    SearchByTextRankPreference? rankPreference,
    String? textQuery,
    bool? useStrictTypeFiltering,
  });
  @JS('evConnectorTypes')
  external JSArray<EVConnectorType>? _evConnectorTypes;
  List<EVConnectorType>? get evConnectorTypes => _evConnectorTypes?.toDart;
  set evConnectorTypes(List<EVConnectorType>? value) =>
      _evConnectorTypes = value?.toJS;
  external num? evMinimumChargingRateKw;
  external String? includedType;
  external bool? isOpenNow;
  external JSAny? /*(string|LatLngAltitude|LatLngBounds|Circle|LatLng|LatLngLiteral|LatLngAltitudeLiteral|LatLngBoundsLiteral|CircleLiteral)?*/
      locationBias;
  external LatLngBoundsOrLatLngBoundsLiteral? locationRestriction;
  external num? maxResultCount;
  external num? minRating;
  @JS('priceLevels')
  external JSArray<PriceLevel>? _priceLevels;
  List<PriceLevel>? get priceLevels => _priceLevels?.toDart;
  set priceLevels(List<PriceLevel>? value) => _priceLevels = value?.toJS;
  external SearchByTextRankPreference? rankPreference;
  external String? textQuery;
  external bool? useStrictTypeFiltering;
}
