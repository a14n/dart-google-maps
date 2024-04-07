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

part of '../places_service.dart';

extension type PlaceSearchRequest._(JSObject _) implements JSObject {
  external PlaceSearchRequest({
    LatLngBoundsOrLatLngBoundsLiteral? bounds,
    String? keyword,
    String? language,
    LatLngOrLatLngLiteral? location,
    num? maxPriceLevel,
    num? minPriceLevel,
    String? name,
    bool? openNow,
    num? radius,
    RankBy? rankBy,
    String? type,
  });
  external LatLngBoundsOrLatLngBoundsLiteral? bounds;
  external String? keyword;
  external String? language;
  external LatLngOrLatLngLiteral? location;
  external num? maxPriceLevel;
  external num? minPriceLevel;
  external String? name;
  external bool? openNow;
  external num? radius;
  external RankBy? rankBy;
  external String? type;
}
