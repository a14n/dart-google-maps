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
abstract class _PlaceResult {
  factory _PlaceResult() => $js;
  // custom name for address_components
  @JsName('address_components')
  List<GeocoderAddressComponent> addressComponents;
  // custom name for adr_address
  @JsName('adr_address')
  String adrAddress;
  List<PlaceAspectRating> aspects;
  // custom name for business_status
  @JsName('business_status')
  BusinessStatus businessStatus;
  // custom name for formatted_address
  @JsName('formatted_address')
  String formattedAddress;
  // custom name for formatted_phone_number
  @JsName('formatted_phone_number')
  String formattedPhoneNumber;
  PlaceGeometry geometry;
  // custom name for html_attributions
  @JsName('html_attributions')
  List<String> htmlAttributions;
  String icon;
  // custom name for international_phone_number
  @JsName('international_phone_number')
  String internationalPhoneNumber;
  String name;
  // custom name for opening_hours
  @JsName('opening_hours')
  PlaceOpeningHours openingHours;
  // custom name for permanently_closed
  @JsName('permanently_closed')
  bool permanentlyClosed;
  List<PlacePhoto> photos;
  // custom name for place_id
  @JsName('place_id')
  String placeId;
  // custom name for plus_code
  @JsName('plus_code')
  PlacePlusCode plusCode;
  // custom name for price_level
  @JsName('price_level')
  num priceLevel;
  num rating;
  List<PlaceReview> reviews;
  List<String> types;
  String url;
  // custom name for user_ratings_total
  @JsName('user_ratings_total')
  num userRatingsTotal;
  // custom name for utc_offset
  @JsName('utc_offset')
  num utcOffset;
  // custom name for utc_offset_minutes
  @JsName('utc_offset_minutes')
  num utcOffsetMinutes;
  String vicinity;
  String website;
}
