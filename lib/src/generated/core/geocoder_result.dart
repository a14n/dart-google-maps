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

part of '../google_maps_core.dart';

@JsName()
@anonymous
abstract class GeocoderResult {
  factory GeocoderResult() => $js();
  // custom name for address_components
  @JsName('address_components')
  List<GeocoderAddressComponent?>? addressComponents;
  // custom name for formatted_address
  @JsName('formatted_address')
  String? formattedAddress;
  GeocoderGeometry? geometry;
  // custom name for place_id
  @JsName('place_id')
  String? placeId;
  List<String?>? types;
  // custom name for partial_match
  @JsName('partial_match')
  bool? partialMatch;
  // custom name for plus_code
  @JsName('plus_code')
  PlacePlusCode? plusCode;
  // custom name for postcode_localities
  @JsName('postcode_localities')
  List<String?>? postcodeLocalities;
}
