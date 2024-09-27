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

extension type PlaceResult._(JSObject _) implements JSObject {
  external PlaceResult({
    JSArray<GeocoderAddressComponent>? address_components,
    String? adr_address,
    JSArray<PlaceAspectRating>? aspects,
    BusinessStatus? business_status,
    String? formatted_address,
    String? formatted_phone_number,
    PlaceGeometry? geometry,
    JSArray<JSString>? html_attributions,
    String? icon,
    String? icon_background_color,
    String? icon_mask_base_uri,
    String? international_phone_number,
    String? name,
    PlaceOpeningHours? opening_hours,
    bool? permanently_closed,
    JSArray<PlacePhoto>? photos,
    String? place_id,
    PlacePlusCode? plus_code,
    num? price_level,
    num? rating,
    JSArray<PlaceReview>? reviews,
    JSArray<JSString>? types,
    String? url,
    num? user_ratings_total,
    num? utc_offset,
    num? utc_offset_minutes,
    String? vicinity,
    String? website,
  });
  @JS('address_components')
  external JSArray<GeocoderAddressComponent>? _addressComponents;
  List<GeocoderAddressComponent>? get addressComponents =>
      _addressComponents?.toDart;
  set addressComponents(List<GeocoderAddressComponent>? value) =>
      _addressComponents = value?.toJS;
  @JS('adr_address')
  external String? _adrAddress;
  String? get adrAddress => _adrAddress;
  set adrAddress(String? value) => _adrAddress = value;
  @JS('aspects')
  external JSArray<PlaceAspectRating>? _aspects;
  List<PlaceAspectRating>? get aspects => _aspects?.toDart;
  set aspects(List<PlaceAspectRating>? value) => _aspects = value?.toJS;
  @JS('business_status')
  external BusinessStatus? _businessStatus;
  BusinessStatus? get businessStatus => _businessStatus;
  set businessStatus(BusinessStatus? value) => _businessStatus = value;
  @JS('formatted_address')
  external String? _formattedAddress;
  String? get formattedAddress => _formattedAddress;
  set formattedAddress(String? value) => _formattedAddress = value;
  @JS('formatted_phone_number')
  external String? _formattedPhoneNumber;
  String? get formattedPhoneNumber => _formattedPhoneNumber;
  set formattedPhoneNumber(String? value) => _formattedPhoneNumber = value;
  external PlaceGeometry? geometry;
  @JS('html_attributions')
  external JSArray<JSString>? _htmlAttributions;
  List<String>? get htmlAttributions =>
      _htmlAttributions?.toDart.map((type) => type.toDart).toList();
  set htmlAttributions(List<String>? value) =>
      _htmlAttributions = value.jsify() as JSArray<JSString>?;
  external String? icon;
  @JS('icon_background_color')
  external String? _iconBackgroundColor;
  String? get iconBackgroundColor => _iconBackgroundColor;
  set iconBackgroundColor(String? value) => _iconBackgroundColor = value;
  @JS('icon_mask_base_uri')
  external String? _iconMaskBaseUri;
  String? get iconMaskBaseUri => _iconMaskBaseUri;
  set iconMaskBaseUri(String? value) => _iconMaskBaseUri = value;
  @JS('international_phone_number')
  external String? _internationalPhoneNumber;
  String? get internationalPhoneNumber => _internationalPhoneNumber;
  set internationalPhoneNumber(String? value) =>
      _internationalPhoneNumber = value;
  external String? name;
  @JS('opening_hours')
  external PlaceOpeningHours? _openingHours;
  PlaceOpeningHours? get openingHours => _openingHours;
  set openingHours(PlaceOpeningHours? value) => _openingHours = value;
  @JS('permanently_closed')
  external bool? _permanentlyClosed;
  bool? get permanentlyClosed => _permanentlyClosed;
  set permanentlyClosed(bool? value) => _permanentlyClosed = value;
  @JS('photos')
  external JSArray<PlacePhoto>? _photos;
  List<PlacePhoto>? get photos => _photos?.toDart;
  set photos(List<PlacePhoto>? value) => _photos = value?.toJS;
  @JS('place_id')
  external String? _placeId;
  String? get placeId => _placeId;
  set placeId(String? value) => _placeId = value;
  @JS('plus_code')
  external PlacePlusCode? _plusCode;
  PlacePlusCode? get plusCode => _plusCode;
  set plusCode(PlacePlusCode? value) => _plusCode = value;
  @JS('price_level')
  external num? _priceLevel;
  num? get priceLevel => _priceLevel;
  set priceLevel(num? value) => _priceLevel = value;
  external num? rating;
  @JS('reviews')
  external JSArray<PlaceReview>? _reviews;
  List<PlaceReview>? get reviews => _reviews?.toDart;
  set reviews(List<PlaceReview>? value) => _reviews = value?.toJS;
  @JS('types')
  external JSArray<JSString>? _types;
  List<String>? get types => _types?.toDart.map((type) => type.toDart).toList();
  set types(List<String>? value) =>
      _types = value.jsify() as JSArray<JSString>?;
  external String? url;
  @JS('user_ratings_total')
  external num? _userRatingsTotal;
  num? get userRatingsTotal => _userRatingsTotal;
  set userRatingsTotal(num? value) => _userRatingsTotal = value;
  @JS('utc_offset')
  external num? _utcOffset;
  num? get utcOffset => _utcOffset;
  set utcOffset(num? value) => _utcOffset = value;
  @JS('utc_offset_minutes')
  external num? _utcOffsetMinutes;
  num? get utcOffsetMinutes => _utcOffsetMinutes;
  set utcOffsetMinutes(num? value) => _utcOffsetMinutes = value;
  external String? vicinity;
  external String? website;
}
